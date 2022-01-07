
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;


 int vfp_put_float (int ,int) ;

__attribute__((used)) static u32 vfp_single_fcpy(int sd, int unused, s32 m, u32 fpscr)
{
 vfp_put_float(m, sd);
 return 0;
}
