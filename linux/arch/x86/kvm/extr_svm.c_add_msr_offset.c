
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int BUG () ;
 int MSRPM_OFFSETS ;
 scalar_t__ MSR_INVALID ;
 scalar_t__* msrpm_offsets ;

__attribute__((used)) static void add_msr_offset(u32 offset)
{
 int i;

 for (i = 0; i < MSRPM_OFFSETS; ++i) {


  if (msrpm_offsets[i] == offset)
   return;


  if (msrpm_offsets[i] != MSR_INVALID)
   continue;


  msrpm_offsets[i] = offset;

  return;
 }





 BUG();
}
