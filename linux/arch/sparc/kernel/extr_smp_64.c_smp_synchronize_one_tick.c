
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ (* get_tick ) () ;} ;


 size_t MASTER ;
 unsigned long NUM_ITERS ;
 unsigned long NUM_ROUNDS ;
 size_t SLAVE ;
 scalar_t__* go ;
 int itc_sync_lock ;
 int membar_safe (char*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int rmb () ;
 int smp_start_sync_tick_client (int) ;
 scalar_t__ stub1 () ;
 TYPE_1__* tick_ops ;
 int wmb () ;

__attribute__((used)) static void smp_synchronize_one_tick(int cpu)
{
 unsigned long flags, i;

 go[MASTER] = 0;

 smp_start_sync_tick_client(cpu);


 while (!go[MASTER])
  rmb();


 go[MASTER] = 0;
 membar_safe("#StoreLoad");

 raw_spin_lock_irqsave(&itc_sync_lock, flags);
 {
  for (i = 0; i < NUM_ROUNDS*NUM_ITERS; i++) {
   while (!go[MASTER])
    rmb();
   go[MASTER] = 0;
   wmb();
   go[SLAVE] = tick_ops->get_tick();
   membar_safe("#StoreLoad");
  }
 }
 raw_spin_unlock_irqrestore(&itc_sync_lock, flags);
}
