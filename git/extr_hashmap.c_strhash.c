
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int FNV32_BASE ;
 unsigned int FNV32_PRIME ;

unsigned int strhash(const char *str)
{
 unsigned int c, hash = FNV32_BASE;
 while ((c = (unsigned char) *str++))
  hash = (hash * FNV32_PRIME) ^ c;
 return hash;
}
