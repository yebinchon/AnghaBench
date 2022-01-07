
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_template {int dummy; } ;


 int crypto_register_template (struct crypto_template*) ;
 int crypto_unregister_template (struct crypto_template*) ;

int crypto_register_templates(struct crypto_template *tmpls, int count)
{
 int i, err;

 for (i = 0; i < count; i++) {
  err = crypto_register_template(&tmpls[i]);
  if (err)
   goto out;
 }
 return 0;

out:
 for (--i; i >= 0; --i)
  crypto_unregister_template(&tmpls[i]);
 return err;
}
