
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;


 int cpu_to_be32 (unsigned int) ;

__attribute__((used)) static void regmap_format_32_be(void *buf, unsigned int val, unsigned int shift)
{
 __be32 *b = buf;

 b[0] = cpu_to_be32(val << shift);
}
