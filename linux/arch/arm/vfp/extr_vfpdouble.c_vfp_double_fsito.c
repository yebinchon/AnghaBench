
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vfp_double {int sign; int exponent; int significand; } ;


 int vfp_double_normaliseround (int,struct vfp_double*,int,int ,char*) ;
 int vfp_get_float (int) ;

__attribute__((used)) static u32 vfp_double_fsito(int dd, int unused, int dm, u32 fpscr)
{
 struct vfp_double vdm;
 u32 m = vfp_get_float(dm);

 vdm.sign = (m & 0x80000000) >> 16;
 vdm.exponent = 1023 + 63 - 1;
 vdm.significand = vdm.sign ? -m : m;

 return vfp_double_normaliseround(dd, &vdm, fpscr, 0, "fsito");
}
