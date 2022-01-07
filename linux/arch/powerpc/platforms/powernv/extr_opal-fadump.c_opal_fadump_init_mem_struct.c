
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct fw_dump {int boot_mem_regs_cnt; scalar_t__ boot_memory_size; scalar_t__* boot_mem_sz; int * boot_mem_addr; int kernel_metadata; scalar_t__ reserve_dump_area_start; } ;
struct TYPE_7__ {TYPE_1__* rgn; scalar_t__ fadumphdr_addr; int region_cnt; } ;
struct TYPE_6__ {scalar_t__ dest; scalar_t__ size; int src; } ;


 TYPE_2__* __va (int ) ;
 int opal_fadump_init_metadata (TYPE_2__*) ;
 int opal_fadump_update_config (struct fw_dump*,TYPE_2__*) ;
 TYPE_2__* opal_fdm ;

__attribute__((used)) static u64 opal_fadump_init_mem_struct(struct fw_dump *fadump_conf)
{
 u64 addr = fadump_conf->reserve_dump_area_start;
 int i;

 opal_fdm = __va(fadump_conf->kernel_metadata);
 opal_fadump_init_metadata(opal_fdm);


 for (i = 0; i < fadump_conf->boot_mem_regs_cnt; i++) {
  opal_fdm->rgn[i].src = fadump_conf->boot_mem_addr[i];
  opal_fdm->rgn[i].dest = addr;
  opal_fdm->rgn[i].size = fadump_conf->boot_mem_sz[i];

  opal_fdm->region_cnt++;
  addr += fadump_conf->boot_mem_sz[i];
 }





 opal_fdm->fadumphdr_addr = (opal_fdm->rgn[0].dest +
        fadump_conf->boot_memory_size);

 opal_fadump_update_config(fadump_conf, opal_fdm);

 return addr;
}
