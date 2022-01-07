
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binder_transaction_log_entry {int debug_id_done; } ;
struct binder_transaction_log {int full; struct binder_transaction_log_entry* entry; int cur; } ;


 unsigned int ARRAY_SIZE (struct binder_transaction_log_entry*) ;
 int WRITE_ONCE (int ,int ) ;
 unsigned int atomic_inc_return (int *) ;
 int memset (struct binder_transaction_log_entry*,int ,int) ;
 int smp_wmb () ;

__attribute__((used)) static struct binder_transaction_log_entry *binder_transaction_log_add(
 struct binder_transaction_log *log)
{
 struct binder_transaction_log_entry *e;
 unsigned int cur = atomic_inc_return(&log->cur);

 if (cur >= ARRAY_SIZE(log->entry))
  log->full = 1;
 e = &log->entry[cur % ARRAY_SIZE(log->entry)];
 WRITE_ONCE(e->debug_id_done, 0);





 smp_wmb();
 memset(e, 0, sizeof(*e));
 return e;
}
