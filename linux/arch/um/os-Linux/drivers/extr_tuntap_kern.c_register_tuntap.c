
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int register_transport (int *) ;
 int tuntap_transport ;

__attribute__((used)) static int register_tuntap(void)
{
 register_transport(&tuntap_transport);
 return 0;
}
