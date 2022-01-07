
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ op_enabled; scalar_t__ fetch_enabled; } ;


 int MSR_AMD64_IBSFETCHCTL ;
 int MSR_AMD64_IBSOPCTL ;
 int ibs_caps ;
 TYPE_1__ ibs_config ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static void op_amd_stop_ibs(void)
{
 if (!ibs_caps)
  return;

 if (ibs_config.fetch_enabled)

  wrmsrl(MSR_AMD64_IBSFETCHCTL, 0);

 if (ibs_config.op_enabled)

  wrmsrl(MSR_AMD64_IBSOPCTL, 0);
}
