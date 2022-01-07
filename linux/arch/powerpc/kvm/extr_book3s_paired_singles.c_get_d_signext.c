
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static int get_d_signext(u32 inst)
{
 int d = inst & 0x8ff;

 if (d & 0x800)
  return -(d & 0x7ff);

 return (d & 0x7ff);
}
