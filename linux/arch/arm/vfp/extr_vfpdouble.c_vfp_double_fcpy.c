
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int vfp_get_double (int) ;
 int vfp_put_double (int ,int) ;

__attribute__((used)) static u32 vfp_double_fcpy(int dd, int unused, int dm, u32 fpscr)
{
 vfp_put_double(vfp_get_double(dm), dd);
 return 0;
}
