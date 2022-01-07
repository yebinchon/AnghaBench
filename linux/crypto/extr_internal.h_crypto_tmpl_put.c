
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_template {int module; } ;


 int module_put (int ) ;

__attribute__((used)) static inline void crypto_tmpl_put(struct crypto_template *tmpl)
{
 module_put(tmpl->module);
}
