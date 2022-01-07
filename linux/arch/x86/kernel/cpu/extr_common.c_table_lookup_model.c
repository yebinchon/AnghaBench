
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct legacy_cpu_model_info {scalar_t__ family; char const** model_names; } ;
struct cpuinfo_x86 {int x86_model; scalar_t__ x86; } ;
struct TYPE_2__ {struct legacy_cpu_model_info* legacy_models; } ;


 TYPE_1__* this_cpu ;

__attribute__((used)) static const char *table_lookup_model(struct cpuinfo_x86 *c)
{
 return ((void*)0);
}
