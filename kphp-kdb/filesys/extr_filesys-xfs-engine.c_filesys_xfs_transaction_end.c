
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_filesys_xfs_transaction {scalar_t__ id; } ;


 int assert (int) ;
 int delete_file (int ) ;
 scalar_t__ last_closed_transaction_id ;
 int last_closed_transaction_time ;
 scalar_t__ log_cur_pos () ;
 int now ;
 int pending_operations_apply () ;
 scalar_t__ pending_saving_binlogpos_logpos ;
 int tmp_dir ;
 scalar_t__ transaction_id ;

__attribute__((used)) static void filesys_xfs_transaction_end (struct lev_filesys_xfs_transaction *E) {
  assert (transaction_id == E->id);
  pending_operations_apply ();
  delete_file (tmp_dir);
  pending_saving_binlogpos_logpos = log_cur_pos () + 8;
  last_closed_transaction_id = transaction_id;
  last_closed_transaction_time = now;
}
