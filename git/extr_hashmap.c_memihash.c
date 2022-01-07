
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int FNV32_BASE ;
 unsigned int FNV32_PRIME ;

unsigned int memihash(const void *buf, size_t len)
{
 unsigned int hash = FNV32_BASE;
 unsigned char *ucbuf = (unsigned char *) buf;
 while (len--) {
  unsigned int c = *ucbuf++;
  if (c >= 'a' && c <= 'z')
   c -= 'a' - 'A';
  hash = (hash * FNV32_PRIME) ^ c;
 }
 return hash;
}
