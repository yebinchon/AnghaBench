
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;


 scalar_t__ fips_enabled ;
 int module_name (struct module*) ;
 int module_sig_ok (struct module*) ;
 int panic (char*,int ) ;

__attribute__((used)) static inline void crypto_check_module_sig(struct module *mod)
{
 if (fips_enabled && mod && !module_sig_ok(mod))
  panic("Module %s signature verification failed in FIPS mode\n",
        module_name(mod));
}
