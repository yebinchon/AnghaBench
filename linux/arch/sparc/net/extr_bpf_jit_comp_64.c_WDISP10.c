
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 WDISP10(u32 off)
{
 u32 ret = ((off >> 2) & 0xff) << 5;

 ret |= ((off >> (2 + 8)) & 0x03) << 19;

 return ret;
}
