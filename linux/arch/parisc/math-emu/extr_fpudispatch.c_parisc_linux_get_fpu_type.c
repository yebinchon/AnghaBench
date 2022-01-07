
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {scalar_t__ cpu_type; } ;


 size_t FPU_TYPE_FLAG_POS ;
 int PA2_0_FPU_FLAG ;
 int ROLEX_EXTEN_FLAG ;
 int TIMEX_EXTEN_FLAG ;
 TYPE_1__ boot_cpu_data ;
 scalar_t__ pcxs ;
 scalar_t__ pcxt ;
 scalar_t__ pcxt_ ;
 scalar_t__ pcxu ;

__attribute__((used)) static void parisc_linux_get_fpu_type(u_int fpregs[])
{



 if (boot_cpu_data.cpu_type == pcxs)
  fpregs[FPU_TYPE_FLAG_POS] = TIMEX_EXTEN_FLAG;
 else if (boot_cpu_data.cpu_type == pcxt ||
          boot_cpu_data.cpu_type == pcxt_)
  fpregs[FPU_TYPE_FLAG_POS] = ROLEX_EXTEN_FLAG;
 else if (boot_cpu_data.cpu_type >= pcxu)
  fpregs[FPU_TYPE_FLAG_POS] = PA2_0_FPU_FLAG;
}
