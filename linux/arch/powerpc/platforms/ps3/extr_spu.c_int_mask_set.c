
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct spu {int dummy; } ;
struct TYPE_3__ {int * masks; } ;
struct TYPE_4__ {TYPE_1__ cache; int spe_id; } ;


 int lv1_set_spe_interrupt_mask (int ,int,int ) ;
 TYPE_2__* spu_pdata (struct spu*) ;

__attribute__((used)) static void int_mask_set(struct spu *spu, int class, u64 mask)
{
 spu_pdata(spu)->cache.masks[class] = mask;
 lv1_set_spe_interrupt_mask(spu_pdata(spu)->spe_id, class,
  spu_pdata(spu)->cache.masks[class]);
}
