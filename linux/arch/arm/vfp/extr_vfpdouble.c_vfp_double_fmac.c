
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int vfp_double_multiply_accumulate (int,int,int,int ,int ,char*) ;

__attribute__((used)) static u32 vfp_double_fmac(int dd, int dn, int dm, u32 fpscr)
{
 return vfp_double_multiply_accumulate(dd, dn, dm, fpscr, 0, "fmac");
}
