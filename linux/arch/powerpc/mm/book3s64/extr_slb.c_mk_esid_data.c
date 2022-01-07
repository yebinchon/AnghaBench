
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum slb_index { ____Placeholder_slb_index } slb_index ;


 unsigned long SLB_ESID_V ;
 unsigned long slb_esid_mask (int) ;

__attribute__((used)) static inline unsigned long mk_esid_data(unsigned long ea, int ssize,
      enum slb_index index)
{
 return (ea & slb_esid_mask(ssize)) | SLB_ESID_V | index;
}
