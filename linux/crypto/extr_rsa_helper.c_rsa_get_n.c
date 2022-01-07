
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rsa_key {size_t n_sz; void const* n; } ;


 int EINVAL ;
 scalar_t__ fips_enabled ;
 int pr_err (char*) ;

int rsa_get_n(void *context, size_t hdrlen, unsigned char tag,
       const void *value, size_t vlen)
{
 struct rsa_key *key = context;
 const u8 *ptr = value;
 size_t n_sz = vlen;


 if (!value || !vlen)
  return -EINVAL;

 if (fips_enabled) {
  while (n_sz && !*ptr) {
   ptr++;
   n_sz--;
  }


  if (n_sz < 256) {
   pr_err("RSA: key size not allowed in FIPS mode\n");
   return -EINVAL;
  }
 }

 key->n = value;
 key->n_sz = vlen;

 return 0;
}
