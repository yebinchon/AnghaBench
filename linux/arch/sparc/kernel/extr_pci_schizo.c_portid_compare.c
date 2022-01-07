
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PBM_CHIP_TYPE_TOMATILLO ;

__attribute__((used)) static inline int portid_compare(u32 x, u32 y, int chip_type)
{
 if (chip_type == PBM_CHIP_TYPE_TOMATILLO) {
  if (x == (y ^ 1))
   return 1;
  return 0;
 }
 return (x == y);
}
