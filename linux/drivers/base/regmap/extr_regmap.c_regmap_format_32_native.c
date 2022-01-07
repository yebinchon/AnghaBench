
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;



__attribute__((used)) static void regmap_format_32_native(void *buf, unsigned int val,
        unsigned int shift)
{
 *(u32 *)buf = val << shift;
}
