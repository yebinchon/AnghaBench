
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PERM_EVERYBODY ;
 int PERM_GROUP ;

 int _ (char*) ;
 int die (int ,int) ;
 scalar_t__ git_config_bool (char const*,char const*) ;
 int strcmp (char const*,char*) ;
 int strtol (char const*,char**,int) ;

int git_config_perm(const char *var, const char *value)
{
 int i;
 char *endptr;

 if (value == ((void*)0))
  return PERM_GROUP;

 if (!strcmp(value, "umask"))
  return 128;
 if (!strcmp(value, "group"))
  return PERM_GROUP;
 if (!strcmp(value, "all") ||
     !strcmp(value, "world") ||
     !strcmp(value, "everybody"))
  return PERM_EVERYBODY;


 i = strtol(value, &endptr, 8);


 if (*endptr != 0)
  return git_config_bool(var, value) ? PERM_GROUP : 128;





 switch (i) {
 case 128:
  return 128;
 case 129:
  return PERM_GROUP;
 case 130:
  return PERM_EVERYBODY;
 }



 if ((i & 0600) != 0600)
  die(_("problem with core.sharedRepository filemode value "
      "(0%.3o).\nThe owner of files must always have "
      "read and write permissions."), i);





 return -(i & 0666);
}
