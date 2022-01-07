
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int destination_address; } ;
struct rtas_fadump_mem_struct {TYPE_1__ rmr_region; } ;
struct fw_dump {scalar_t__ boot_memory_size; scalar_t__ boot_mem_dest_addr; scalar_t__ fadumphdr_addr; } ;


 scalar_t__ be64_to_cpu (int ) ;

__attribute__((used)) static void rtas_fadump_update_config(struct fw_dump *fadump_conf,
          const struct rtas_fadump_mem_struct *fdm)
{
 fadump_conf->boot_mem_dest_addr =
  be64_to_cpu(fdm->rmr_region.destination_address);

 fadump_conf->fadumphdr_addr = (fadump_conf->boot_mem_dest_addr +
           fadump_conf->boot_memory_size);
}
