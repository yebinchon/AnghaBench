
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ i9xx_flush_page; } ;


 TYPE_1__ intel_private ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void i9xx_chipset_flush(void)
{
 if (intel_private.i9xx_flush_page)
  writel(1, intel_private.i9xx_flush_page);
}
