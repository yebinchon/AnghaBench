
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {int util; int string; } ;
struct string_list {int dummy; } ;


 int _ (char*) ;
 int error (int ,int,...) ;
 char* sq_dequote (char*) ;
 char* strchr (char*,char) ;
 char* strchrnul (char*,char) ;
 struct string_list_item* string_list_append (struct string_list*,char*) ;
 int xstrdup (char*) ;

__attribute__((used)) static int parse_key_value_squoted(char *buf, struct string_list *list)
{
 while (*buf) {
  struct string_list_item *item;
  char *np;
  char *cp = strchr(buf, '=');
  if (!cp) {
   np = strchrnul(buf, '\n');
   return error(_("no key present in '%.*s'"),
         (int) (np - buf), buf);
  }
  np = strchrnul(cp, '\n');
  *cp++ = '\0';
  item = string_list_append(list, buf);

  buf = np + (*np == '\n');
  *np = '\0';
  cp = sq_dequote(cp);
  if (!cp)
   return error(_("unable to dequote value of '%s'"),
         item->string);
  item->util = xstrdup(cp);
 }
 return 0;
}
