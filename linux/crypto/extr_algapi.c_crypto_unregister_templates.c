
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_template {int dummy; } ;


 int crypto_unregister_template (struct crypto_template*) ;

void crypto_unregister_templates(struct crypto_template *tmpls, int count)
{
 int i;

 for (i = count - 1; i >= 0; --i)
  crypto_unregister_template(&tmpls[i]);
}
