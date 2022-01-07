
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int x86_model; } ;
 int X86_FEATURE_SELFSNOOP ;
 int setup_clear_cpu_cap (int ) ;

__attribute__((used)) static void check_memory_type_self_snoop_errata(struct cpuinfo_x86 *c)
{
 switch (c->x86_model) {
 case 135:
 case 138:
 case 137:
 case 136:
 case 139:
 case 134:
 case 131:
 case 133:
 case 132:
 case 129:
 case 128:
 case 130:
  setup_clear_cpu_cap(X86_FEATURE_SELFSNOOP);
 }
}
