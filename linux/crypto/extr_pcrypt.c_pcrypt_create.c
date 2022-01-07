
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtattr {int dummy; } ;
struct crypto_template {int dummy; } ;
struct crypto_attr_type {int type; int mask; } ;



 int CRYPTO_ALG_TYPE_MASK ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct crypto_attr_type*) ;
 int PTR_ERR (struct crypto_attr_type*) ;
 struct crypto_attr_type* crypto_get_attr_type (struct rtattr**) ;
 int pcrypt_create_aead (struct crypto_template*,struct rtattr**,int,int) ;

__attribute__((used)) static int pcrypt_create(struct crypto_template *tmpl, struct rtattr **tb)
{
 struct crypto_attr_type *algt;

 algt = crypto_get_attr_type(tb);
 if (IS_ERR(algt))
  return PTR_ERR(algt);

 switch (algt->type & algt->mask & CRYPTO_ALG_TYPE_MASK) {
 case 128:
  return pcrypt_create_aead(tmpl, tb, algt->type, algt->mask);
 }

 return -EINVAL;
}
