
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;





 int DIV_ROUND_UP (int,int) ;
 int UINT_MAX ;
 int hmat_revision ;

__attribute__((used)) static u32 hmat_normalize(u16 entry, u64 base, u8 type)
{
 u32 value;




 if (entry == 0xffff || !entry)
  return 0;
 else if (base > (UINT_MAX / (entry)))
  return 0;





 value = entry * base;
 if (hmat_revision == 1) {
  if (value < 10)
   return 0;
  value = DIV_ROUND_UP(value, 10);
 } else if (hmat_revision == 2) {
  switch (type) {
  case 130:
  case 129:
  case 128:
   value = DIV_ROUND_UP(value, 1000);
   break;
  default:
   break;
  }
 }
 return value;
}
