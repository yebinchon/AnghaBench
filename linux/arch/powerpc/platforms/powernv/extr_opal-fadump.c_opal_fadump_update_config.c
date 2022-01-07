
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct opal_fadump_mem_struct {int fadumphdr_addr; TYPE_1__* rgn; int region_cnt; } ;
struct fw_dump {int fadumphdr_addr; int boot_mem_dest_addr; } ;
struct TYPE_2__ {int dest; } ;


 int pr_debug (char*,int ) ;

__attribute__((used)) static void opal_fadump_update_config(struct fw_dump *fadump_conf,
          const struct opal_fadump_mem_struct *fdm)
{
 pr_debug("Boot memory regions count: %d\n", fdm->region_cnt);





 fadump_conf->boot_mem_dest_addr = fdm->rgn[0].dest;
 pr_debug("Destination address of boot memory regions: %#016llx\n",
   fadump_conf->boot_mem_dest_addr);

 fadump_conf->fadumphdr_addr = fdm->fadumphdr_addr;
}
