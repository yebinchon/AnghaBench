
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_filesys_xfs_transaction {int id; } ;


 int delete_file (int ) ;
 int exit (int) ;
 int kprintf (char*,int ) ;
 int mkdir (int ,int) ;
 int pending_operations_reset (int) ;
 scalar_t__ pending_saving_binlogpos_logpos ;
 int tmp_dir ;
 scalar_t__ transaction_file_no ;
 int transaction_id ;
 int vkprintf (int,char*,int ) ;

__attribute__((used)) static void filesys_xfs_transaction_begin (struct lev_filesys_xfs_transaction *E) {
  pending_saving_binlogpos_logpos = 0;
  vkprintf (1, "Begin transaction %d.\n", E->id);
  int r = 0;
  pending_operations_reset (1);
  delete_file (tmp_dir);
  r = mkdir (tmp_dir, 0777);
  if (r < 0) {
    kprintf ("mkdir (%s) fail. %m\n", tmp_dir);
    exit (1);
  }
  transaction_id = E->id;
  transaction_file_no = 0;
}
