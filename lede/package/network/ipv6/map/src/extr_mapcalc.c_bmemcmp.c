
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int memcmp (int const*,int const*,size_t) ;

__attribute__((used)) static int bmemcmp(const void *av, const void *bv, size_t bits)
{
 const uint8_t *a = av, *b = bv;
 size_t bytes = bits / 8;
 bits %= 8;

 int res = memcmp(a, b, bytes);
 if (res == 0 && bits > 0)
  res = (a[bytes] >> (8 - bits)) - (b[bytes] >> (8 - bits));

 return res;
}
