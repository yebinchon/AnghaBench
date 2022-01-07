
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_IMA_ARCH_POLICY ;
 int CONFIG_MODULE_SIG ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ arch_ima_get_secureboot () ;
 char const* const* sb_arch_rules ;
 int set_module_sig_enforced () ;

const char * const *arch_get_ima_policy(void)
{
 if (IS_ENABLED(CONFIG_IMA_ARCH_POLICY) && arch_ima_get_secureboot()) {
  if (IS_ENABLED(CONFIG_MODULE_SIG))
   set_module_sig_enforced();
  return sb_arch_rules;
 }
 return ((void*)0);
}
