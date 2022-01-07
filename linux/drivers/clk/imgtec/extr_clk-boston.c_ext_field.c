
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ffs (int) ;

__attribute__((used)) static u32 ext_field(u32 val, u32 mask)
{
 return (val & mask) >> (ffs(mask) - 1);
}
