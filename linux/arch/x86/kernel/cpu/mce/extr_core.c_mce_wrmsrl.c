
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_3__ {int finished; } ;


 scalar_t__ __this_cpu_read (int ) ;
 TYPE_1__ injectm ;
 int msr_to_offset (int ) ;
 scalar_t__ this_cpu_ptr (TYPE_1__*) ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static void mce_wrmsrl(u32 msr, u64 v)
{
 if (__this_cpu_read(injectm.finished)) {
  int offset = msr_to_offset(msr);

  if (offset >= 0)
   *(u64 *)((char *)this_cpu_ptr(&injectm) + offset) = v;
  return;
 }
 wrmsrl(msr, v);
}
