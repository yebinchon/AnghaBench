
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int byte ;



__attribute__((used)) static void copy4(byte *out,uint32_t x)
{
 out[0] = x&0xFF;
 out[1] = (x>>8)&0xFF;
 out[2] = (x>>16)&0xFF;
 out[3] = (x>>24)&0xFF;
}
