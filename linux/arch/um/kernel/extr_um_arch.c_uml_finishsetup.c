
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_notifier_chain_register (int *,int *) ;
 int new_thread_handler () ;
 int panic_exit_notifier ;
 int panic_notifier_list ;
 int uml_postsetup () ;

void uml_finishsetup(void)
{
 atomic_notifier_chain_register(&panic_notifier_list,
           &panic_exit_notifier);

 uml_postsetup();

 new_thread_handler();
}
