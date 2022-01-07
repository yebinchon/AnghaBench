
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ecc_point {int const* y; int const* x; } ;
struct ecc_curve {int g; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int EAGAIN ;
 int ECC_MAX_DIGITS ;
 int EINVAL ;
 int ENOMEM ;
 struct ecc_point* ecc_alloc_point (unsigned int) ;
 int ecc_free_point (struct ecc_point*) ;
 struct ecc_curve* ecc_get_curve (unsigned int) ;
 scalar_t__ ecc_point_is_zero (struct ecc_point*) ;
 int ecc_point_mult (struct ecc_point*,int *,int *,int *,struct ecc_curve const*,unsigned int) ;
 int ecc_swap_digits (int const*,int *,unsigned int) ;

int ecc_make_pub_key(unsigned int curve_id, unsigned int ndigits,
       const u64 *private_key, u64 *public_key)
{
 int ret = 0;
 struct ecc_point *pk;
 u64 priv[ECC_MAX_DIGITS];
 const struct ecc_curve *curve = ecc_get_curve(curve_id);

 if (!private_key || !curve || ndigits > ARRAY_SIZE(priv)) {
  ret = -EINVAL;
  goto out;
 }

 ecc_swap_digits(private_key, priv, ndigits);

 pk = ecc_alloc_point(ndigits);
 if (!pk) {
  ret = -ENOMEM;
  goto out;
 }

 ecc_point_mult(pk, &curve->g, priv, ((void*)0), curve, ndigits);
 if (ecc_point_is_zero(pk)) {
  ret = -EAGAIN;
  goto err_free_point;
 }

 ecc_swap_digits(pk->x, public_key, ndigits);
 ecc_swap_digits(pk->y, &public_key[ndigits], ndigits);

err_free_point:
 ecc_free_point(pk);
out:
 return ret;
}
