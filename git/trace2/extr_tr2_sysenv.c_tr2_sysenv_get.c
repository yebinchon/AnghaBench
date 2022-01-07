
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum tr2_sysenv_variable { ____Placeholder_tr2_sysenv_variable } tr2_sysenv_variable ;
struct TYPE_2__ {int getenv_called; char const* value; int env_var_name; } ;


 int BUG (char*,int) ;
 int TR2_SYSENV_MUST_BE_LAST ;
 int free (char const*) ;
 char* getenv (int ) ;
 TYPE_1__* tr2_sysenv_settings ;
 char const* xstrdup (char const*) ;

const char *tr2_sysenv_get(enum tr2_sysenv_variable var)
{
 if (var >= TR2_SYSENV_MUST_BE_LAST)
  BUG("tr2_sysenv_get invalid var '%d'", var);

 if (!tr2_sysenv_settings[var].getenv_called) {
  const char *v = getenv(tr2_sysenv_settings[var].env_var_name);
  if (v && *v) {
   free(tr2_sysenv_settings[var].value);
   tr2_sysenv_settings[var].value = xstrdup(v);
  }
  tr2_sysenv_settings[var].getenv_called = 1;
 }

 return tr2_sysenv_settings[var].value;
}
