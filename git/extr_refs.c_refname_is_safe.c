
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int isupper (char const) ;
 int normalize_path_copy (char*,char const*) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 int strcmp (char*,char const*) ;
 size_t strlen (char const*) ;
 char* xmallocz (size_t) ;

int refname_is_safe(const char *refname)
{
 const char *rest;

 if (skip_prefix(refname, "refs/", &rest)) {
  char *buf;
  int result;
  size_t restlen = strlen(rest);


  if (!restlen || *rest == '/' || rest[restlen - 1] == '/')
   return 0;






  buf = xmallocz(restlen);
  result = !normalize_path_copy(buf, rest) && !strcmp(buf, rest);
  free(buf);
  return result;
 }

 do {
  if (!isupper(*refname) && *refname != '_')
   return 0;
  refname++;
 } while (*refname);
 return 1;
}
