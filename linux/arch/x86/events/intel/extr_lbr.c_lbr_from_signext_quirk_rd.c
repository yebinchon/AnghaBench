
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int LBR_FROM_FLAG_ABORT ;
 int LBR_FROM_FLAG_IN_TX ;
 int lbr_from_quirk_key ;
 scalar_t__ static_branch_unlikely (int *) ;

__attribute__((used)) static u64 lbr_from_signext_quirk_rd(u64 val)
{
 if (static_branch_unlikely(&lbr_from_quirk_key)) {




  val &= ~(LBR_FROM_FLAG_IN_TX | LBR_FROM_FLAG_ABORT);
 }
 return val;
}
