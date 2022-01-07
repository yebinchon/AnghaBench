
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;



__attribute__((used)) static void regmap_format_8(void *buf, unsigned int val, unsigned int shift)
{
 u8 *b = buf;

 b[0] = val << shift;
}
