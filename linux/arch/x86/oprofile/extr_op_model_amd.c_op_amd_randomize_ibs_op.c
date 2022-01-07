
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ s8 ;


 int IBS_CAPS_RDWROPCNT ;
 unsigned int IBS_RANDOM_MASK ;
 int ibs_caps ;
 unsigned int lfsr_random () ;

__attribute__((used)) static inline u64 op_amd_randomize_ibs_op(u64 val)
{
 unsigned int random = lfsr_random();

 if (!(ibs_caps & IBS_CAPS_RDWROPCNT))
  val += (s8)(random >> 4);
 else
  val |= (u64)(random & IBS_RANDOM_MASK) << 32;

 return val;
}
