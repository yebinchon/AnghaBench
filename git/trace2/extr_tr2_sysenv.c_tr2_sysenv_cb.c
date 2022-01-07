
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; int git_config_name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int free (int ) ;
 int starts_with (char const*,char*) ;
 int strcmp (char const*,int ) ;
 TYPE_1__* tr2_sysenv_settings ;
 int xstrdup (char const*) ;

__attribute__((used)) static int tr2_sysenv_cb(const char *key, const char *value, void *d)
{
 int k;

 if (!starts_with(key, "trace2."))
  return 0;

 for (k = 0; k < ARRAY_SIZE(tr2_sysenv_settings); k++) {
  if (!strcmp(key, tr2_sysenv_settings[k].git_config_name)) {
   free(tr2_sysenv_settings[k].value);
   tr2_sysenv_settings[k].value = xstrdup(value);
   return 0;
  }
 }

 return 0;
}
