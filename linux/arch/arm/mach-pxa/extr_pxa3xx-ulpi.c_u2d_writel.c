
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ mmio_base; } ;


 int __raw_writel (scalar_t__,scalar_t__) ;
 TYPE_1__* u2d ;

__attribute__((used)) static inline void u2d_writel(u32 reg, u32 val)
{
 __raw_writel(val, u2d->mmio_base + reg);
}
