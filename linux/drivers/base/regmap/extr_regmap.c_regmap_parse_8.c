
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;



__attribute__((used)) static unsigned int regmap_parse_8(const void *buf)
{
 const u8 *b = buf;

 return b[0];
}
