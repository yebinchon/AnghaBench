
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * gf ;


 int mul (int *,int *,int * const) ;
 int sqr (int *,int *) ;

__attribute__((used)) static void inv25519(gf o, const gf i)
{
  gf c;
  int a;
  for (a = 0; a < 16; a++)
    c[a] = i[a];

  for (a = 253; a >= 0; a--)
  {
    sqr(c, c);
    if(a != 2 && a != 4)
      mul(c, c, i);
  }

  for (a = 0; a < 16; a++)
    o[a] = c[a];
}
