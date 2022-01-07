
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __le16 ;


 unsigned int le16_to_cpu (int const) ;

__attribute__((used)) static unsigned int regmap_parse_16_le(const void *buf)
{
 const __le16 *b = buf;

 return le16_to_cpu(b[0]);
}
