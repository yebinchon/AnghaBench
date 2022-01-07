
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int block_mode; scalar_t__ fp; } ;
struct pktcdvd_device {TYPE_1__ settings; } ;


 int pkt_info (struct pktcdvd_device*,char*,char*,int,char) ;

__attribute__((used)) static void pkt_print_settings(struct pktcdvd_device *pd)
{
 pkt_info(pd, "%s packets, %u blocks, Mode-%c disc\n",
   pd->settings.fp ? "Fixed" : "Variable",
   pd->settings.size >> 2,
   pd->settings.block_mode == 8 ? '1' : '2');
}
