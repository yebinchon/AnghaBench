
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ mmio_base; } ;


 scalar_t__ __raw_readl (scalar_t__) ;
 TYPE_1__* u2d ;

__attribute__((used)) static inline u32 u2d_readl(u32 reg)
{
 return __raw_readl(u2d->mmio_base + reg);
}
