
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int NCAPINTS ;
 int printf (char*,...) ;
 scalar_t__ x86_cap_strs ;

__attribute__((used)) static void show_cap_strs(u32 *err_flags)
{
 int i, j;
 for (i = 0; i < NCAPINTS; i++) {
  u32 e = err_flags[i];
  for (j = 0; j < 32; j++) {
   if (e & 1)
    printf("%d:%d ", i, j);
   e >>= 1;
  }
 }

}
