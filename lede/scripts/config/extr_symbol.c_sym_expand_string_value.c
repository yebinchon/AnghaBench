
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;


 int SYMBOL_MAXLENGTH ;
 scalar_t__ isalnum (char const) ;
 char* realloc (char*,size_t) ;
 int strcat (char*,char const*) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;
 int strncat (char*,char const*,int) ;
 int sym_calc_value (struct symbol*) ;
 struct symbol* sym_find (char*) ;
 char* sym_get_string_value (struct symbol*) ;
 char* xmalloc (size_t) ;

const char *sym_expand_string_value(const char *in)
{
 const char *src;
 char *res;
 size_t reslen;

 reslen = strlen(in) + 1;
 res = xmalloc(reslen);
 res[0] = '\0';

 while ((src = strchr(in, '$'))) {
  char *p, name[SYMBOL_MAXLENGTH];
  const char *symval = "";
  struct symbol *sym;
  size_t newlen;

  strncat(res, in, src - in);
  src++;

  p = name;
  while (isalnum(*src) || *src == '_')
   *p++ = *src++;
  *p = '\0';

  sym = sym_find(name);
  if (sym != ((void*)0)) {
   sym_calc_value(sym);
   symval = sym_get_string_value(sym);
  }

  newlen = strlen(res) + strlen(symval) + strlen(src) + 1;
  if (newlen > reslen) {
   reslen = newlen;
   res = realloc(res, reslen);
  }

  strcat(res, symval);
  in = src;
 }
 strcat(res, in);

 return res;
}
