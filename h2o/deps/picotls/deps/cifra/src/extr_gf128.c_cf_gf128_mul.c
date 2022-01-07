
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int* cf_gf128 ;


 int cf_gf128_double_le (int*,int*) ;
 int memcpy (int*,int* const,int) ;
 int memset (int*,int ,int) ;
 int select_xor128 (int*,int*,int*,int) ;
 int xor_words (int*,int*,int) ;

void cf_gf128_mul(const cf_gf128 x, const cf_gf128 y, cf_gf128 out)
{






  cf_gf128 Z, V;
  memset(Z, 0, sizeof Z);
  memcpy(V, y, sizeof V);

  int i;
  for (i = 0; i < 128; i++)
  {
    uint32_t word = x[i >> 5];
    uint8_t bit = (word >> (31 - (i & 31))) & 1;




    if (bit)
      xor_words(Z, V, 4);


    cf_gf128_double_le(V, V);
  }

  memcpy(out, Z, sizeof Z);
}
