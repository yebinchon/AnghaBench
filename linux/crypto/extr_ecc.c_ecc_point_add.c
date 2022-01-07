
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ecc_point {int * y; int * x; } ;
struct TYPE_2__ {unsigned int ndigits; } ;
struct ecc_curve {int p; TYPE_1__ g; } ;


 int ECC_MAX_DIGITS ;
 int apply_z (int *,int *,int *,int ,unsigned int) ;
 int vli_mod_inv (int *,int *,int ,unsigned int) ;
 int vli_mod_sub (int *,int *,int *,int ,unsigned int) ;
 int vli_set (int *,int *,unsigned int) ;
 int xycz_add (int *,int *,int *,int *,int ,unsigned int) ;

__attribute__((used)) static void ecc_point_add(const struct ecc_point *result,
     const struct ecc_point *p, const struct ecc_point *q,
     const struct ecc_curve *curve)
{
 u64 z[ECC_MAX_DIGITS];
 u64 px[ECC_MAX_DIGITS];
 u64 py[ECC_MAX_DIGITS];
 unsigned int ndigits = curve->g.ndigits;

 vli_set(result->x, q->x, ndigits);
 vli_set(result->y, q->y, ndigits);
 vli_mod_sub(z, result->x, p->x, curve->p, ndigits);
 vli_set(px, p->x, ndigits);
 vli_set(py, p->y, ndigits);
 xycz_add(px, py, result->x, result->y, curve->p, ndigits);
 vli_mod_inv(z, z, curve->p, ndigits);
 apply_z(result->x, result->y, z, curve->p, ndigits);
}
