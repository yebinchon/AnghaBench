
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct mce {int dummy; } ;


 int NOTIFY_DONE ;
 scalar_t__ NUM_DEFAULT_NOTIFIERS ;
 int __print_mce (struct mce*) ;
 scalar_t__ atomic_read (int *) ;
 int num_notifiers ;

__attribute__((used)) static int mce_default_notifier(struct notifier_block *nb, unsigned long val,
    void *data)
{
 struct mce *m = (struct mce *)data;

 if (!m)
  return NOTIFY_DONE;

 if (atomic_read(&num_notifiers) > NUM_DEFAULT_NOTIFIERS)
  return NOTIFY_DONE;

 __print_mce(m);

 return NOTIFY_DONE;
}
