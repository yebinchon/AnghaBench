
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto_type {int maskset; int type; int maskclear; } ;
struct crypto_alg {int dummy; } ;


 struct crypto_alg* crypto_alg_mod_lookup (char const*,int ,int ) ;

struct crypto_alg *crypto_find_alg(const char *alg_name,
       const struct crypto_type *frontend,
       u32 type, u32 mask)
{
 if (frontend) {
  type &= frontend->maskclear;
  mask &= frontend->maskclear;
  type |= frontend->type;
  mask |= frontend->maskset;
 }

 return crypto_alg_mod_lookup(alg_name, type, mask);
}
