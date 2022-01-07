
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpg_format {int program; } ;


 int config_error_nonbool (char const*) ;
 int error (char*,char const*,char const*) ;
 struct gpg_format* get_format_by_name (char const*) ;
 int git_config_string (int *,char const*,char const*) ;
 int set_signing_key (char const*) ;
 int strcmp (char const*,char*) ;
 struct gpg_format* use_format ;

int git_gpg_config(const char *var, const char *value, void *cb)
{
 struct gpg_format *fmt = ((void*)0);
 char *fmtname = ((void*)0);

 if (!strcmp(var, "user.signingkey")) {
  if (!value)
   return config_error_nonbool(var);
  set_signing_key(value);
  return 0;
 }

 if (!strcmp(var, "gpg.format")) {
  if (!value)
   return config_error_nonbool(var);
  fmt = get_format_by_name(value);
  if (!fmt)
   return error("unsupported value for %s: %s",
         var, value);
  use_format = fmt;
  return 0;
 }

 if (!strcmp(var, "gpg.program") || !strcmp(var, "gpg.openpgp.program"))
  fmtname = "openpgp";

 if (!strcmp(var, "gpg.x509.program"))
  fmtname = "x509";

 if (fmtname) {
  fmt = get_format_by_name(fmtname);
  return git_config_string(&fmt->program, var, value);
 }

 return 0;
}
