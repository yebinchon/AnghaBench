
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;



__attribute__((used)) static unsigned int regmap_parse_32_native(const void *buf)
{
 return *(u32 *)buf;
}
