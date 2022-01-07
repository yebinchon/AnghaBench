
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be16 ;


 int cpu_to_be16 (unsigned int) ;

__attribute__((used)) static void regmap_format_16_be(void *buf, unsigned int val, unsigned int shift)
{
 __be16 *b = buf;

 b[0] = cpu_to_be16(val << shift);
}
