
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_base ;
 int evdns_base_resume (int ) ;

int
evdns_resume(void)
{
 return evdns_base_resume(current_base);
}
