
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 char* strrchr (char const*,char) ;
 char const* xstrdup (char const*) ;

__attribute__((used)) static const char *rstrip_ref_components(const char *refname, int len)
{
 long remaining = len;
 const char *start = xstrdup(refname);
 const char *to_free = start;

 if (len < 0) {
  int i;
  const char *p = refname;


  for (i = 0; p[i]; p[i] == '/' ? i++ : *p++)
   ;






  remaining = i + len + 1;
 }

 while (remaining-- > 0) {
  char *p = strrchr(start, '/');
  if (p == ((void*)0)) {
   free((char *)to_free);
   return xstrdup("");
  } else
   p[0] = '\0';
 }
 return start;
}
