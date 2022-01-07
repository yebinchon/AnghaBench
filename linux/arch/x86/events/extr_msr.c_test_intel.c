
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ x86_vendor; int x86; int x86_model; } ;
 int PERF_MSR_PPERF ;
 int PERF_MSR_SMI ;
 scalar_t__ X86_VENDOR_INTEL ;
 TYPE_1__ boot_cpu_data ;

__attribute__((used)) static bool test_intel(int idx, void *data)
{
 if (boot_cpu_data.x86_vendor != X86_VENDOR_INTEL ||
     boot_cpu_data.x86 != 6)
  return 0;

 switch (boot_cpu_data.x86_model) {
 case 143:
 case 140:
 case 142:
 case 141:

 case 132:
 case 131:
 case 130:

 case 139:
 case 138:

 case 147:
 case 146:

 case 155:
 case 152:
 case 153:
 case 154:

 case 161:
 case 160:
 case 159:
 case 158:

 case 163:
 case 162:
 case 167:

 case 166:
 case 165:

 case 164:

 case 129:
 case 128:
  if (idx == PERF_MSR_SMI)
   return 1;
  break;

 case 136:
 case 137:
 case 135:
 case 144:
 case 145:
 case 156:
 case 157:
 case 149:
 case 151:
 case 148:
 case 150:
 case 133:
 case 134:
  if (idx == PERF_MSR_SMI || idx == PERF_MSR_PPERF)
   return 1;
  break;
 }

 return 0;
}
