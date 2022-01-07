
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rio_priv {TYPE_1__* inb_atmu_regs; } ;
struct TYPE_2__ {int riwar; } ;


 int RIO_INB_ATMU_COUNT ;
 int out_be32 (int *,int ) ;

__attribute__((used)) static void fsl_rio_inbound_mem_init(struct rio_priv *priv)
{
 int i;


 for (i = 0; i < RIO_INB_ATMU_COUNT; i++)
  out_be32(&priv->inb_atmu_regs[i].riwar, 0);
}
