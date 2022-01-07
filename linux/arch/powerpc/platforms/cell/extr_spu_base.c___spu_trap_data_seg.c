
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int slb_flt; } ;
struct spu {int slb_replace; TYPE_1__ stats; int mm; } ;
struct copro_slb {int dummy; } ;


 int copro_calculate_slb (int ,unsigned long,struct copro_slb*) ;
 int spu_load_slb (struct spu*,int,struct copro_slb*) ;
 int spu_restart_dma (struct spu*) ;

__attribute__((used)) static int __spu_trap_data_seg(struct spu *spu, unsigned long ea)
{
 struct copro_slb slb;
 int ret;

 ret = copro_calculate_slb(spu->mm, ea, &slb);
 if (ret)
  return ret;

 spu_load_slb(spu, spu->slb_replace, &slb);

 spu->slb_replace++;
 if (spu->slb_replace >= 8)
  spu->slb_replace = 0;

 spu_restart_dma(spu);
 spu->stats.slb_flt++;
 return 0;
}
