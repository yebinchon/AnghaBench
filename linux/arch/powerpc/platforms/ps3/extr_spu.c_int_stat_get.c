
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct spu {int dummy; } ;
struct TYPE_2__ {int spe_id; } ;


 int lv1_get_spe_interrupt_status (int ,int,int *) ;
 TYPE_1__* spu_pdata (struct spu*) ;

__attribute__((used)) static u64 int_stat_get(struct spu *spu, int class)
{
 u64 stat;

 lv1_get_spe_interrupt_status(spu_pdata(spu)->spe_id, class, &stat);
 return stat;
}
