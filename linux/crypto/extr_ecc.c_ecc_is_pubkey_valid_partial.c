
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ecc_point {scalar_t__ ndigits; int * x; int * y; } ;
struct TYPE_2__ {scalar_t__ ndigits; } ;
struct ecc_curve {int * p; int * b; int * a; TYPE_1__ g; } ;


 int ECC_MAX_DIGITS ;
 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ ecc_point_is_zero (struct ecc_point*) ;
 scalar_t__ vli_cmp (int *,int *,scalar_t__) ;
 int vli_mod_add (int *,int *,int *,int *,scalar_t__) ;
 int vli_mod_mult_fast (int *,int *,int *,int *,scalar_t__) ;
 int vli_mod_square_fast (int *,int *,int *,scalar_t__) ;

int ecc_is_pubkey_valid_partial(const struct ecc_curve *curve,
    struct ecc_point *pk)
{
 u64 yy[ECC_MAX_DIGITS], xxx[ECC_MAX_DIGITS], w[ECC_MAX_DIGITS];

 if (WARN_ON(pk->ndigits != curve->g.ndigits))
  return -EINVAL;


 if (ecc_point_is_zero(pk))
  return -EINVAL;


 if (vli_cmp(curve->p, pk->x, pk->ndigits) != 1)
  return -EINVAL;
 if (vli_cmp(curve->p, pk->y, pk->ndigits) != 1)
  return -EINVAL;


 vli_mod_square_fast(yy, pk->y, curve->p, pk->ndigits);
 vli_mod_square_fast(xxx, pk->x, curve->p, pk->ndigits);
 vli_mod_mult_fast(xxx, xxx, pk->x, curve->p, pk->ndigits);
 vli_mod_mult_fast(w, curve->a, pk->x, curve->p, pk->ndigits);
 vli_mod_add(w, w, curve->b, curve->p, pk->ndigits);
 vli_mod_add(w, w, xxx, curve->p, pk->ndigits);
 if (vli_cmp(yy, w, pk->ndigits) != 0)
  return -EINVAL;

 return 0;
}
