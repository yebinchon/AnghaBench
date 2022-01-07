
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct ecc_curve {int n; } ;


 unsigned int ARRAY_SIZE (int *) ;
 unsigned int ECC_DIGITS_TO_BYTES_SHIFT ;
 int ECC_MAX_DIGITS ;
 int EFAULT ;
 int EINVAL ;
 scalar_t__ __ecc_is_key_valid (struct ecc_curve const*,int *,unsigned int) ;
 int crypto_default_rng ;
 scalar_t__ crypto_get_default_rng () ;
 int crypto_put_default_rng () ;
 int crypto_rng_get_bytes (int ,int *,unsigned int) ;
 struct ecc_curve* ecc_get_curve (unsigned int) ;
 int ecc_swap_digits (int *,int *,unsigned int) ;
 unsigned int vli_num_bits (int ,unsigned int) ;

int ecc_gen_privkey(unsigned int curve_id, unsigned int ndigits, u64 *privkey)
{
 const struct ecc_curve *curve = ecc_get_curve(curve_id);
 u64 priv[ECC_MAX_DIGITS];
 unsigned int nbytes = ndigits << ECC_DIGITS_TO_BYTES_SHIFT;
 unsigned int nbits = vli_num_bits(curve->n, ndigits);
 int err;


 if (nbits < 160 || ndigits > ARRAY_SIZE(priv))
  return -EINVAL;
 if (crypto_get_default_rng())
  return -EFAULT;

 err = crypto_rng_get_bytes(crypto_default_rng, (u8 *)priv, nbytes);
 crypto_put_default_rng();
 if (err)
  return err;


 if (__ecc_is_key_valid(curve, priv, ndigits))
  return -EINVAL;

 ecc_swap_digits(priv, privkey, ndigits);

 return 0;
}
