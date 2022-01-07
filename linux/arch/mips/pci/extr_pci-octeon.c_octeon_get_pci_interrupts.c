
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int board_type; } ;
 TYPE_1__* octeon_bootinfo ;
 scalar_t__ of_machine_is_compatible (char*) ;

const char *octeon_get_pci_interrupts(void)
{
 if (of_machine_is_compatible("dlink,dsr-500n"))
  return "CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC";
 switch (octeon_bootinfo->board_type) {
 case 129:

  return "AAAAADABAAAAAAAAAAAAAAAAAAAAAAAA";
 case 130:
 case 133:
 case 134:
  return "AAABAAAAAAAAAAAAAAAAAAAAAAAAAAAA";
 case 135:
  return "AABCD";
 case 132:
  return "CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC";
 case 128:
 case 131:
 default:
  return "";
 }
}
