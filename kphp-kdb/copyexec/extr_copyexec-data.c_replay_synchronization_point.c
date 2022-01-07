
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lev_copyexec_aux_transaction_header {int mask; } ;
struct TYPE_3__ {scalar_t__ transaction_id; int binlog_pos; int key_id; int ilen; int input; } ;
typedef TYPE_1__ replay_transaction_info_t ;


 int assert (int) ;
 int decrypt_transaction (int ,int ,int ,int ,scalar_t__,unsigned char**,int*) ;
 int free (unsigned char*) ;
 int instance_mask ;
 int last_decryption_failed_transaction_pos ;
 scalar_t__ last_synchronization_point_id ;
 int last_synchronization_point_pos ;
 scalar_t__ synchronization_point_transaction (unsigned char*,int) ;
 int vkprintf (int,char*,scalar_t__,int,int) ;

void replay_synchronization_point (replay_transaction_info_t *T) {
  unsigned char *b;
  int blen;
  int r = decrypt_transaction (T->input, T->ilen, T->key_id, T->binlog_pos, T->transaction_id, &b, &blen);
  if (r < 0) {
    last_decryption_failed_transaction_pos = T->binlog_pos;
    return;
  }
  if (synchronization_point_transaction (b, blen)) {
    struct lev_copyexec_aux_transaction_header *B = (struct lev_copyexec_aux_transaction_header *) b;
    if (!(B->mask & instance_mask)) {
      vkprintf (3, "Skip synchronization point. (transaction_id: %d, mask: 0x%x, instance_mask: 0x%x)\n", T->transaction_id, B->mask, instance_mask);
      free (b);
      return;
    }
    assert (last_synchronization_point_id < T->transaction_id);
    last_synchronization_point_id = T->transaction_id;
    last_synchronization_point_pos = T->binlog_pos;
  }
  free (b);
}
