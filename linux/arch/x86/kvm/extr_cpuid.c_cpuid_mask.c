
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * x86_capability; } ;


 TYPE_1__ boot_cpu_data ;

__attribute__((used)) static void cpuid_mask(u32 *word, int wordnum)
{
 *word &= boot_cpu_data.x86_capability[wordnum];
}
