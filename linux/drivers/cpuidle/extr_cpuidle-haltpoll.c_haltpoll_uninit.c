
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpuhp_remove_state (scalar_t__) ;
 int cpuidle_unregister_driver (int *) ;
 int free_percpu (int *) ;
 int * haltpoll_cpuidle_devices ;
 int haltpoll_driver ;
 scalar_t__ haltpoll_hp_state ;

__attribute__((used)) static void haltpoll_uninit(void)
{
 if (haltpoll_hp_state)
  cpuhp_remove_state(haltpoll_hp_state);
 cpuidle_unregister_driver(&haltpoll_driver);

 free_percpu(haltpoll_cpuidle_devices);
 haltpoll_cpuidle_devices = ((void*)0);
}
