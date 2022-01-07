
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;


 int NEG_MULTIPLY ;
 int vfp_single_multiply_accumulate (int,int,int ,int ,int ,char*) ;

__attribute__((used)) static u32 vfp_single_fnmac(int sd, int sn, s32 m, u32 fpscr)
{
 return vfp_single_multiply_accumulate(sd, sn, m, fpscr, NEG_MULTIPLY, "fnmac");
}
