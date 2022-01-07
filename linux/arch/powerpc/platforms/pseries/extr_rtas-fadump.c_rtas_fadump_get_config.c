
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int destination_address; } ;
struct TYPE_4__ {int source_len; int source_address; } ;
struct rtas_fadump_mem_struct {TYPE_1__ cpu_state_data; TYPE_2__ rmr_region; } ;
struct fw_dump {int boot_mem_regs_cnt; void* reserve_dump_area_start; void* boot_memory_size; void* boot_mem_top; void** boot_mem_sz; void** boot_mem_addr; } ;


 void* be64_to_cpu (int ) ;
 int rtas_fadump_update_config (struct fw_dump*,struct rtas_fadump_mem_struct const*) ;

__attribute__((used)) static void rtas_fadump_get_config(struct fw_dump *fadump_conf,
       const struct rtas_fadump_mem_struct *fdm)
{
 fadump_conf->boot_mem_addr[0] =
  be64_to_cpu(fdm->rmr_region.source_address);
 fadump_conf->boot_mem_sz[0] = be64_to_cpu(fdm->rmr_region.source_len);
 fadump_conf->boot_memory_size = fadump_conf->boot_mem_sz[0];

 fadump_conf->boot_mem_top = fadump_conf->boot_memory_size;
 fadump_conf->boot_mem_regs_cnt = 1;





 fadump_conf->reserve_dump_area_start =
  be64_to_cpu(fdm->cpu_state_data.destination_address);

 rtas_fadump_update_config(fadump_conf, fdm);
}
