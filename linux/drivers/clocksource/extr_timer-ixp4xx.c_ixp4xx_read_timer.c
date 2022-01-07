
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ base; } ;


 scalar_t__ IXP4XX_OSTS_OFFSET ;
 unsigned long __raw_readl (scalar_t__) ;
 TYPE_1__* local_ixp4xx_timer ;

__attribute__((used)) static unsigned long ixp4xx_read_timer(void)
{
 return __raw_readl(local_ixp4xx_timer->base + IXP4XX_OSTS_OFFSET);
}
