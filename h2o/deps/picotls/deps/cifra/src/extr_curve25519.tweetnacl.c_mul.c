
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int* gf ;


 int car25519 (int*) ;

__attribute__((used)) static void mul(gf o, const gf a, const gf b)
{
  int64_t t[31];
  size_t i, j;

  for (i = 0; i < 31; i++)
    t[i] = 0;

  for (i = 0; i < 16; i++)
    for (j = 0; j < 16; j++)
      t[i + j] += a[i] * b[j];

  for (i = 0; i < 15; i++)
    t[i] += 38 * t[i + 16];

  for (i = 0; i < 16; i++)
    o[i] = t[i];

  car25519(o);
  car25519(o);
}
