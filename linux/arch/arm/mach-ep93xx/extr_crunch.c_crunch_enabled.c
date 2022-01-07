
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EP93XX_SYSCON_DEVCFG_CPENA ;

__attribute__((used)) static int crunch_enabled(u32 devcfg)
{
 return !!(devcfg & EP93XX_SYSCON_DEVCFG_CPENA);
}
