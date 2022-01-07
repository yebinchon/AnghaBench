
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_EINVALIDSPEC ;
 int GIT_ERROR_CHECK_ALLOC (char*) ;
 int GIT_ERROR_CONFIG ;
 int assert (int) ;
 int git__free (char*) ;
 char* git__strdup (char const*) ;
 int git_error_set (int ,char*,char const*) ;
 scalar_t__ normalize_section (char*,char*) ;
 char* strchr (char*,char) ;
 char* strrchr (char*,char) ;

int git_config__normalize_name(const char *in, char **out)
{
 char *name, *fdot, *ldot;

 assert(in && out);

 name = git__strdup(in);
 GIT_ERROR_CHECK_ALLOC(name);

 fdot = strchr(name, '.');
 ldot = strrchr(name, '.');

 if (fdot == ((void*)0) || fdot == name || ldot == ((void*)0) || !ldot[1])
  goto invalid;


 if (normalize_section(name, fdot) < 0 ||
     normalize_section(ldot + 1, ((void*)0)) < 0)
  goto invalid;


 while (fdot < ldot)
  if (*fdot++ == '\n')
   goto invalid;

 *out = name;
 return 0;

invalid:
 git__free(name);
 git_error_set(GIT_ERROR_CONFIG, "invalid config item name '%s'", in);
 return GIT_EINVALIDSPEC;
}
