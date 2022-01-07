
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binder_thread {int proc; int todo; } ;


 int BINDER_STAT_THREAD ;
 int BUG_ON (int) ;
 int binder_proc_dec_tmpref (int ) ;
 int binder_stats_deleted (int ) ;
 int kfree (struct binder_thread*) ;
 int list_empty (int *) ;

__attribute__((used)) static void binder_free_thread(struct binder_thread *thread)
{
 BUG_ON(!list_empty(&thread->todo));
 binder_stats_deleted(BINDER_STAT_THREAD);
 binder_proc_dec_tmpref(thread->proc);
 kfree(thread);
}
