
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* gf ;



__attribute__((used)) static void add(gf o, const gf a, const gf b)
{
  size_t i;
  for (i = 0; i < 16; i++)
    o[i] = a[i] + b[i];
}
