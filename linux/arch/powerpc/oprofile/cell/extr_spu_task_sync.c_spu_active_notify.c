
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu {int number; } ;
struct notifier_block {int dummy; } ;


 int cache_lock ;
 int pr_debug (char*) ;
 int process_context_switch (struct spu*,unsigned long) ;
 int release_cached_info (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int spu_active_notify(struct notifier_block *self, unsigned long val,
    void *data)
{
 int retval;
 unsigned long flags;
 struct spu *the_spu = data;

 pr_debug("SPU event notification arrived\n");
 if (!val) {
  spin_lock_irqsave(&cache_lock, flags);
  retval = release_cached_info(the_spu->number);
  spin_unlock_irqrestore(&cache_lock, flags);
 } else {
  retval = process_context_switch(the_spu, val);
 }
 return retval;
}
