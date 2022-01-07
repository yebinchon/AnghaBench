
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static u64 opal_scom_unmangle(u64 addr)
{
 u64 tmp;
 tmp = addr;
 tmp &= 0x0f00000000000000;
 addr &= 0xf0ffffffffffffff;
 addr |= tmp << 4;

 return addr;
}
