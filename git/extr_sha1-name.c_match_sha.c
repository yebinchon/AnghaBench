
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int match_sha(unsigned len, const unsigned char *a, const unsigned char *b)
{
 do {
  if (*a != *b)
   return 0;
  a++;
  b++;
  len -= 2;
 } while (len > 1);
 if (len)
  if ((*a ^ *b) & 0xf0)
   return 0;
 return 1;
}
