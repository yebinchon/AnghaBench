
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ MSRS_IN_RANGE ;
 int MSRS_RANGE_SIZE ;
 scalar_t__ MSR_INVALID ;
 int NUM_MSR_MAPS ;
 scalar_t__* msrpm_ranges ;

__attribute__((used)) static u32 svm_msrpm_offset(u32 msr)
{
 u32 offset;
 int i;

 for (i = 0; i < NUM_MSR_MAPS; i++) {
  if (msr < msrpm_ranges[i] ||
      msr >= msrpm_ranges[i] + MSRS_IN_RANGE)
   continue;

  offset = (msr - msrpm_ranges[i]) / 4;
  offset += (i * MSRS_RANGE_SIZE);


  return offset / 4;
 }


 return MSR_INVALID;
}
