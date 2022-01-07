
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static int postprocess_read(u32 data, int where, unsigned int size)
{
 u32 ret;

 ret = 0;
 switch (size) {
 case 1:
  ret = (data >> ((where & 3) << 3)) & 0xff;
  break;
 case 2:
  ret = (data >> ((where & 3) << 3)) & 0xffff;
  break;
 case 4:
  ret = data;
  break;
 }
 return ret;
}
