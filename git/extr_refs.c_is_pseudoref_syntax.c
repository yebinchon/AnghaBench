
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isupper (char const) ;

__attribute__((used)) static int is_pseudoref_syntax(const char *refname)
{
 const char *c;

 for (c = refname; *c; c++) {
  if (!isupper(*c) && *c != '-' && *c != '_')
   return 0;
 }

 return 1;
}
