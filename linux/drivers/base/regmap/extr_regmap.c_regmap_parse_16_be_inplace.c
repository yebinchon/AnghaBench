
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be16 ;


 int be16_to_cpu (int ) ;

__attribute__((used)) static void regmap_parse_16_be_inplace(void *buf)
{
 __be16 *b = buf;

 b[0] = be16_to_cpu(b[0]);
}
