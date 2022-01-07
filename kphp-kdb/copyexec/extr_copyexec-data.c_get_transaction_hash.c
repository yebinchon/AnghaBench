
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mask; int transaction_id; int binlog_pos; } ;
typedef TYPE_1__ transaction_t ;


 int SHA1 (unsigned char*,int,unsigned char*) ;
 int assert (int) ;
 int base64url_encode (unsigned char*,int,char*,int) ;
 int memcpy (unsigned char*,int *,int) ;
 int strlen (char*) ;
 int vkprintf (int,char*,int ,int ,int ) ;

__attribute__((used)) static void get_transaction_hash (transaction_t *T, char output[28]) {
  unsigned char a[16], b[20];
  vkprintf (4, "{0} = %lld, {1} = %d, {2} = %d\n", T->binlog_pos, T->transaction_id, T->mask);
  memcpy (a, &T->binlog_pos, 8);
  memcpy (a + 8, &T->transaction_id, 4);
  memcpy (a + 12, &T->mask, 4);
  SHA1 (a, 16, b);
  int r = base64url_encode (b, 20, output, 40);
  assert (!r);
  assert (strlen (output) == 27);
}
