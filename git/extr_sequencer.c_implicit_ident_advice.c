
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* _ (int ) ;
 char* expand_user_path (char*,int ) ;
 scalar_t__ file_exists (char*) ;
 int free (char*) ;
 int implicit_ident_advice_config ;
 int implicit_ident_advice_noconfig ;
 char* xdg_config_home (char*) ;

__attribute__((used)) static const char *implicit_ident_advice(void)
{
 char *user_config = expand_user_path("~/.gitconfig", 0);
 char *xdg_config = xdg_config_home("config");
 int config_exists = file_exists(user_config) || file_exists(xdg_config);

 free(user_config);
 free(xdg_config);

 if (config_exists)
  return _(implicit_ident_advice_config);
 else
  return _(implicit_ident_advice_noconfig);

}
