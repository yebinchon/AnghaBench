
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int64_t ;
typedef int* gf ;


 int* _121665 ;
 int add (int*,int*,int*) ;
 int inv25519 (int*,int*) ;
 int mul (int*,int*,int*) ;
 int pack25519 (int*,int*) ;
 int sel25519 (int*,int*,int) ;
 int sqr (int*,int*) ;
 int sub (int*,int*,int*) ;
 int unpack25519 (int*,int const*) ;

void cf_curve25519_mul(uint8_t *q, const uint8_t *n, const uint8_t *p)
{
  uint8_t z[32];
  gf x;
  gf a, b, c, d, e, f;

  {
  size_t i;
  for (i = 0; i < 31; i++)
    z[i] = n[i];
  z[31] = (n[31] & 127) | 64;
  z[0] &= 248;

  unpack25519(x, p);

  for(i = 0; i < 16; i++)
  {
    b[i] = x[i];
    d[i] = a[i] = c[i] = 0;
  }
  }

  a[0] = d[0] = 1;

  {int i;
  for (i = 254; i >= 0; i--)
  {
    int64_t r = (z[i >> 3] >> (i & 7)) & 1;
    sel25519(a, b, r);
    sel25519(c, d, r);
    add(e, a, c);
    sub(a, a, c);
    add(c, b, d);
    sub(b, b, d);
    sqr(d, e);
    sqr(f, a);
    mul(a, c, a);
    mul(c, b, e);
    add(e, a, c);
    sub(a, a, c);
    sqr(b, a);
    sub(c, d, f);
    mul(a, c, _121665);
    add(a, a, d);
    mul(c, c, a);
    mul(a, d, f);
    mul(d, b, x);
    sqr(b, e);
    sel25519(a, b, r);
    sel25519(c, d, r);
  }
  }

  inv25519(c, c);
  mul(a, a, c);
  pack25519(q, a);
}
