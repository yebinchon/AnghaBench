
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int async_synchronize_full () ;
 scalar_t__ atomic_read (int *) ;
 int deferred_probe_work ;
 int flush_work (int *) ;
 int probe_count ;
 int probe_waitqueue ;
 int wait_event (int ,int) ;

void wait_for_device_probe(void)
{

 flush_work(&deferred_probe_work);


 wait_event(probe_waitqueue, atomic_read(&probe_count) == 0);
 async_synchronize_full();
}
