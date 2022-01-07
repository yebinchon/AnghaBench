
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;



__attribute__((used)) static unsigned int regmap_parse_24(const void *buf)
{
 const u8 *b = buf;
 unsigned int ret = b[2];
 ret |= ((unsigned int)b[1]) << 8;
 ret |= ((unsigned int)b[0]) << 16;

 return ret;
}
