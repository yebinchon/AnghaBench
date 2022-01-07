
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int VFP_REG_ZERO ;
 int vfp_compare (int,int ,int ,int ) ;

__attribute__((used)) static u32 vfp_double_fcmpz(int dd, int unused, int dm, u32 fpscr)
{
 return vfp_compare(dd, 0, VFP_REG_ZERO, fpscr);
}
