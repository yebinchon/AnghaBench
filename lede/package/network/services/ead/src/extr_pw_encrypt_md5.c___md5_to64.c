
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * ascii64 ;

__attribute__((used)) static char*
__md5_to64(char *s, unsigned v, int n)
{
 while (--n >= 0) {
  *s++ = ascii64[v & 0x3f];
  v >>= 6;
 }
 return s;
}
