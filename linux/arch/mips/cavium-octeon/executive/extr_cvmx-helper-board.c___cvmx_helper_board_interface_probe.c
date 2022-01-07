
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int board_type; } ;






 TYPE_1__* cvmx_sysinfo_get () ;

int __cvmx_helper_board_interface_probe(int interface, int supported_ports)
{
 switch (cvmx_sysinfo_get()->board_type) {
 case 130:
  if (interface == 0)
   return 2;
  break;
 case 131:
  if (interface == 0)
   return 2;
  break;
 case 128:
  if (interface == 0)
   return 0;
  break;


 case 129:
  if (interface == 1)
   return 0;
  break;
 }
 return supported_ports;
}
