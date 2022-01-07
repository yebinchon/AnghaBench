
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int sun4v_t5_set_perfreg (unsigned long,int ) ;

__attribute__((used)) static void n5_pcr_write(unsigned long reg_num, u64 val)
{
 (void) sun4v_t5_set_perfreg(reg_num, val);
}
