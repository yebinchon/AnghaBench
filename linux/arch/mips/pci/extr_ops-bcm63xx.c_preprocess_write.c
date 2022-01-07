
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static int preprocess_write(u32 orig_data, u32 val, int where,
       unsigned int size)
{
 u32 ret;

 ret = 0;
 switch (size) {
 case 1:
  ret = (orig_data & ~(0xff << ((where & 3) << 3))) |
   (val << ((where & 3) << 3));
  break;
 case 2:
  ret = (orig_data & ~(0xffff << ((where & 3) << 3))) |
   (val << ((where & 3) << 3));
  break;
 case 4:
  ret = val;
  break;
 }
 return ret;
}
