
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;


 int sun4v_vt_get_perfreg (unsigned long,unsigned long*) ;

__attribute__((used)) static u64 n4_pcr_read(unsigned long reg_num)
{
 unsigned long val;

 (void) sun4v_vt_get_perfreg(reg_num, &val);

 return val;
}
