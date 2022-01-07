
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LEV_FILESYS_XFS_END_TRANSACTION ;
 int events ;
 int kprintf (char*) ;
 int* memory_alloc_log_event (int ,int) ;
 int transaction_id ;
 int vkprintf (int,char*,int ) ;

__attribute__((used)) static void do_transaction_end () {
  if (!events) {
    kprintf ("Transaction didn't contain any event. Nothing output to the binlog.\n");
    return;
  }
  int *p = memory_alloc_log_event (LEV_FILESYS_XFS_END_TRANSACTION, 8);
  p[1] = transaction_id;
  vkprintf (1, "Transaction contains %lld events.\n", events);
}
