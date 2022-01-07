
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int* gf ;



__attribute__((used)) static void sel25519(gf p, gf q, int64_t b)
{
  int64_t tmp, mask = ~(b-1);
  size_t i;
  for (i = 0; i < 16; i++)
  {
    tmp = mask & (p[i] ^ q[i]);
    p[i] ^= tmp;
    q[i] ^= tmp;
  }
}
