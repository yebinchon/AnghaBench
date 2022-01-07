
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int LBR_FROM_SIGNEXT_2MSB ;
 int lbr_from_quirk_key ;
 scalar_t__ static_branch_unlikely (int *) ;

inline u64 lbr_from_signext_quirk_wr(u64 val)
{
 if (static_branch_unlikely(&lbr_from_quirk_key)) {
  val |= (LBR_FROM_SIGNEXT_2MSB & val) << 2;
 }
 return val;
}
