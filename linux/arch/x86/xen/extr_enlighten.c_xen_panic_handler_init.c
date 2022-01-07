
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_notifier_chain_register (int *,int *) ;
 int panic_notifier_list ;
 int xen_panic_block ;

int xen_panic_handler_init(void)
{
 atomic_notifier_chain_register(&panic_notifier_list, &xen_panic_block);
 return 0;
}
