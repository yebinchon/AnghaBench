
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be16 ;


 unsigned int be16_to_cpu (int const) ;

__attribute__((used)) static unsigned int regmap_parse_16_be(const void *buf)
{
 const __be16 *b = buf;

 return be16_to_cpu(b[0]);
}
