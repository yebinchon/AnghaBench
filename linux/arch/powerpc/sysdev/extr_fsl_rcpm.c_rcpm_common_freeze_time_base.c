
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int clrbits32 (int *,int ) ;
 int in_be32 (int *) ;
 int setbits32 (int *,int ) ;

__attribute__((used)) static void rcpm_common_freeze_time_base(u32 *tben_reg, int freeze)
{
 static u32 mask;

 if (freeze) {
  mask = in_be32(tben_reg);
  clrbits32(tben_reg, mask);
 } else {
  setbits32(tben_reg, mask);
 }


 in_be32(tben_reg);
}
