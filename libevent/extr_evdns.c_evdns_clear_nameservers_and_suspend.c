
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_base ;
 int evdns_base_clear_nameservers_and_suspend (int ) ;

int
evdns_clear_nameservers_and_suspend(void)
{
 return evdns_base_clear_nameservers_and_suspend(current_base);
}
