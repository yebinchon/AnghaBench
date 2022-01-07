
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore_box {int dummy; } ;


 int SKL_UNC_GLOBAL_CTL_CORE_ALL ;
 int SKL_UNC_PERF_GLOBAL_CTL ;
 int SNB_UNC_GLOBAL_CTL_EN ;
 int wrmsrl (int ,int) ;

__attribute__((used)) static void skl_uncore_msr_enable_box(struct intel_uncore_box *box)
{
 wrmsrl(SKL_UNC_PERF_GLOBAL_CTL,
  SNB_UNC_GLOBAL_CTL_EN | SKL_UNC_GLOBAL_CTL_CORE_ALL);
}
