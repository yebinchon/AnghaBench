
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct TYPE_3__ {int finished; } ;


 int WARN_ONCE (int,char*,int ) ;
 scalar_t__ __this_cpu_read (int ) ;
 TYPE_1__ injectm ;
 int msr_to_offset (int ) ;
 scalar_t__ rdmsrl_safe (int ,scalar_t__*) ;
 scalar_t__ this_cpu_ptr (TYPE_1__*) ;

__attribute__((used)) static u64 mce_rdmsrl(u32 msr)
{
 u64 v;

 if (__this_cpu_read(injectm.finished)) {
  int offset = msr_to_offset(msr);

  if (offset < 0)
   return 0;
  return *(u64 *)((char *)this_cpu_ptr(&injectm) + offset);
 }

 if (rdmsrl_safe(msr, &v)) {
  WARN_ONCE(1, "mce: Unable to read MSR 0x%x!\n", msr);





  v = 0;
 }

 return v;
}
