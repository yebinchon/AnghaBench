
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* interface_port_count ;

int cvmx_helper_ports_on_interface(int interface)
{
 return interface_port_count[interface];
}
