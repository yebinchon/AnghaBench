
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct openpic {int num_mmio_regions; struct mem_reg** mmio_regions; } ;
struct mem_reg {scalar_t__ start_addr; scalar_t__ size; int (* write ) (struct openpic*,scalar_t__,int ) ;} ;
typedef scalar_t__ gpa_t ;


 int ENXIO ;
 int stub1 (struct openpic*,scalar_t__,int ) ;

__attribute__((used)) static int kvm_mpic_write_internal(struct openpic *opp, gpa_t addr, u32 val)
{
 int i;

 for (i = 0; i < opp->num_mmio_regions; i++) {
  const struct mem_reg *mr = opp->mmio_regions[i];

  if (mr->start_addr > addr || addr >= mr->start_addr + mr->size)
   continue;

  return mr->write(opp, addr - mr->start_addr, val);
 }

 return -ENXIO;
}
