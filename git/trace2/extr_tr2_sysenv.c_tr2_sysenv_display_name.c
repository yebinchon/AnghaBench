
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum tr2_sysenv_variable { ____Placeholder_tr2_sysenv_variable } tr2_sysenv_variable ;
struct TYPE_2__ {char const* env_var_name; } ;


 int BUG (char*,int) ;
 int TR2_SYSENV_MUST_BE_LAST ;
 TYPE_1__* tr2_sysenv_settings ;

const char *tr2_sysenv_display_name(enum tr2_sysenv_variable var)
{
 if (var >= TR2_SYSENV_MUST_BE_LAST)
  BUG("tr2_sysenv_get invalid var '%d'", var);

 return tr2_sysenv_settings[var].env_var_name;
}
