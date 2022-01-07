
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_template {int module; } ;


 int try_module_get (int ) ;

__attribute__((used)) static inline int crypto_tmpl_get(struct crypto_template *tmpl)
{
 return try_module_get(tmpl->module);
}
