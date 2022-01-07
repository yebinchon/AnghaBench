
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gf128mul_4k {int * t; } ;
typedef int be128 ;


 int GFP_KERNEL ;
 int be128_xor (int *,int *,int *) ;
 int gf128mul_x_lle (int *,int *) ;
 struct gf128mul_4k* kzalloc (int,int ) ;

struct gf128mul_4k *gf128mul_init_4k_lle(const be128 *g)
{
 struct gf128mul_4k *t;
 int j, k;

 t = kzalloc(sizeof(*t), GFP_KERNEL);
 if (!t)
  goto out;

 t->t[128] = *g;
 for (j = 64; j > 0; j >>= 1)
  gf128mul_x_lle(&t->t[j], &t->t[j+j]);

 for (j = 2; j < 256; j += j)
  for (k = 1; k < j; ++k)
   be128_xor(&t->t[j + k], &t->t[j], &t->t[k]);

out:
 return t;
}
