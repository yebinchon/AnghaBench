
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int h; int l; } ;
struct TYPE_6__ {int err; TYPE_1__ reg; int msr_no; } ;
struct msr_info_completion {TYPE_2__ msr; int done; } ;
typedef int rv ;
struct TYPE_7__ {struct msr_info_completion* info; int func; } ;
typedef TYPE_3__ call_single_data_t ;


 int __rdmsr_safe_on_cpu ;
 int init_completion (int *) ;
 int memset (struct msr_info_completion*,int ,int) ;
 int smp_call_function_single_async (unsigned int,TYPE_3__*) ;
 int wait_for_completion (int *) ;

int rdmsr_safe_on_cpu(unsigned int cpu, u32 msr_no, u32 *l, u32 *h)
{
 struct msr_info_completion rv;
 call_single_data_t csd = {
  .func = __rdmsr_safe_on_cpu,
  .info = &rv,
 };
 int err;

 memset(&rv, 0, sizeof(rv));
 init_completion(&rv.done);
 rv.msr.msr_no = msr_no;

 err = smp_call_function_single_async(cpu, &csd);
 if (!err) {
  wait_for_completion(&rv.done);
  err = rv.msr.err;
 }
 *l = rv.msr.reg.l;
 *h = rv.msr.reg.h;

 return err;
}
