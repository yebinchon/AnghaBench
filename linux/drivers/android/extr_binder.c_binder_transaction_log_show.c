
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct binder_transaction_log* private; } ;
struct binder_transaction_log {int * entry; scalar_t__ full; int cur; } ;


 unsigned int ARRAY_SIZE (int *) ;
 unsigned int atomic_read (int *) ;
 int print_binder_transaction_log_entry (struct seq_file*,int *) ;

int binder_transaction_log_show(struct seq_file *m, void *unused)
{
 struct binder_transaction_log *log = m->private;
 unsigned int log_cur = atomic_read(&log->cur);
 unsigned int count;
 unsigned int cur;
 int i;

 count = log_cur + 1;
 cur = count < ARRAY_SIZE(log->entry) && !log->full ?
  0 : count % ARRAY_SIZE(log->entry);
 if (count > ARRAY_SIZE(log->entry) || log->full)
  count = ARRAY_SIZE(log->entry);
 for (i = 0; i < count; i++) {
  unsigned int index = cur++ % ARRAY_SIZE(log->entry);

  print_binder_transaction_log_entry(m, &log->entry[index]);
 }
 return 0;
}
