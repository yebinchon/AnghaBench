
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int h; int l; } ;
struct TYPE_4__ {TYPE_1__ reg; int msr_no; int err; } ;
struct msr_info_completion {int done; TYPE_2__ msr; } ;


 int complete (int *) ;
 int rdmsr_safe (int ,int *,int *) ;

__attribute__((used)) static void __rdmsr_safe_on_cpu(void *info)
{
 struct msr_info_completion *rv = info;

 rv->msr.err = rdmsr_safe(rv->msr.msr_no, &rv->msr.reg.l, &rv->msr.reg.h);
 complete(&rv->done);
}
