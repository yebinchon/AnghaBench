
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct credential {int use_http_path; scalar_t__ username; int helpers; } ;


 struct credential CREDENTIAL_INIT ;
 int config_error_nonbool (char const*) ;
 int credential_clear (struct credential*) ;
 int credential_from_url (struct credential*,char*) ;
 int credential_match (struct credential*,struct credential*) ;
 int free (char*) ;
 int git_config_bool (char const*,char const*) ;
 int skip_prefix (char const*,char*,char const**) ;
 int strcmp (char const*,char*) ;
 int string_list_append (int *,char const*) ;
 int string_list_clear (int *,int ) ;
 char* strrchr (char const*,char) ;
 char* xmemdupz (char const*,int) ;
 scalar_t__ xstrdup (char const*) ;

__attribute__((used)) static int credential_config_callback(const char *var, const char *value,
          void *data)
{
 struct credential *c = data;
 const char *key, *dot;

 if (!skip_prefix(var, "credential.", &key))
  return 0;

 if (!value)
  return config_error_nonbool(var);

 dot = strrchr(key, '.');
 if (dot) {
  struct credential want = CREDENTIAL_INIT;
  char *url = xmemdupz(key, dot - key);
  int matched;

  credential_from_url(&want, url);
  matched = credential_match(&want, c);

  credential_clear(&want);
  free(url);

  if (!matched)
   return 0;
  key = dot + 1;
 }

 if (!strcmp(key, "helper")) {
  if (*value)
   string_list_append(&c->helpers, value);
  else
   string_list_clear(&c->helpers, 0);
 } else if (!strcmp(key, "username")) {
  if (!c->username)
   c->username = xstrdup(value);
 }
 else if (!strcmp(key, "usehttppath"))
  c->use_http_path = git_config_bool(var, value);

 return 0;
}
