
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LC_MESSAGES ;
 char* getenv (char*) ;
 char* setlocale (int ,int *) ;
 scalar_t__ strcmp (char const*,char*) ;

const char *get_preferred_languages(void)
{
 const char *retval;

 retval = getenv("LANGUAGE");
 if (retval && *retval)
  return retval;


 retval = setlocale(LC_MESSAGES, ((void*)0));
 if (retval && *retval &&
  strcmp(retval, "C") &&
  strcmp(retval, "POSIX"))
  return retval;


 return ((void*)0);
}
