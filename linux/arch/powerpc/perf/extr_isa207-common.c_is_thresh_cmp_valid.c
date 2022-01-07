
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;


 unsigned int EVENT_THR_CMP_MASK ;
 unsigned int EVENT_THR_CMP_SHIFT ;

__attribute__((used)) static bool is_thresh_cmp_valid(u64 event)
{
 unsigned int cmp, exp;





 cmp = (event >> EVENT_THR_CMP_SHIFT) & EVENT_THR_CMP_MASK;
 exp = cmp >> 7;

 if (exp && (cmp & 0x60) == 0)
  return 0;

 return 1;
}
