
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int dummy; } ;


 int intel_clear_lmce () ;

void mce_intel_feature_clear(struct cpuinfo_x86 *c)
{
 intel_clear_lmce();
}
