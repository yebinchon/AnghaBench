
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * gf ;



__attribute__((used)) static void set25519(gf r, const gf a)
{
  size_t i;
  for (i = 0; i < 16; i++)
    r[i] = a[i];
}
