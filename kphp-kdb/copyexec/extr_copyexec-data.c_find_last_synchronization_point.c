
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int copyexec_aux_replay_binlog (int ,int ) ;
 int exit (int) ;
 int kprintf (char*,scalar_t__,scalar_t__) ;
 scalar_t__ last_decryption_failed_transaction_pos ;
 int last_synchronization_point_id ;
 scalar_t__ last_synchronization_point_pos ;
 int replay_synchronization_point ;
 int vkprintf (int,char*,int) ;

int find_last_synchronization_point (void) {
  last_synchronization_point_id = 0;
  last_decryption_failed_transaction_pos = last_synchronization_point_pos = 0;
  int r = copyexec_aux_replay_binlog (0, replay_synchronization_point);
  if (r < 0) {
    vkprintf (1, "find_last_synchronization_point: copyexec_aux_replay_binlog returns %d.\n", r);
  }
  if (last_decryption_failed_transaction_pos > last_synchronization_point_pos) {
    kprintf ("Couldn't decrypt transaction at %lld pos, last synchronization point pos is %lld.\n", last_decryption_failed_transaction_pos, last_synchronization_point_pos);
    exit (1);
  }
  return last_synchronization_point_id;
}
