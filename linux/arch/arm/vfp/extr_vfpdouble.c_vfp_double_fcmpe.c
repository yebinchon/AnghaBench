
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int vfp_compare (int,int,int,int ) ;

__attribute__((used)) static u32 vfp_double_fcmpe(int dd, int unused, int dm, u32 fpscr)
{
 return vfp_compare(dd, 1, dm, fpscr);
}
