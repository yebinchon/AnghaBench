
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;



__attribute__((used)) static void regmap_format_16_native(void *buf, unsigned int val,
        unsigned int shift)
{
 *(u16 *)buf = val << shift;
}
