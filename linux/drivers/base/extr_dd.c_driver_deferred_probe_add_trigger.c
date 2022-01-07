
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int atomic_read (int *) ;
 int deferred_trigger_count ;
 int driver_deferred_probe_add (struct device*) ;
 int driver_deferred_probe_trigger () ;

__attribute__((used)) static void driver_deferred_probe_add_trigger(struct device *dev,
           int local_trigger_count)
{
 driver_deferred_probe_add(dev);

 if (local_trigger_count != atomic_read(&deferred_trigger_count))
  driver_deferred_probe_trigger();
}
