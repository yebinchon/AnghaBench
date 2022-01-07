
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {scalar_t__ len; } ;


 int REFNAME_ALLOW_ONELEVEL ;
 int check_refname_component (char const*,int*,struct strbuf*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_complete (struct strbuf*,char) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int check_or_sanitize_refname(const char *refname, int flags,
         struct strbuf *sanitized)
{
 int component_len, component_count = 0;

 if (!strcmp(refname, "@")) {

  if (sanitized)
   strbuf_addch(sanitized, '-');
  else
   return -1;
 }

 while (1) {
  if (sanitized && sanitized->len)
   strbuf_complete(sanitized, '/');


  component_len = check_refname_component(refname, &flags,
       sanitized);
  if (sanitized && component_len == 0)
   ;
  else if (component_len <= 0)
   return -1;

  component_count++;
  if (refname[component_len] == '\0')
   break;

  refname += component_len + 1;
 }

 if (refname[component_len - 1] == '.') {

  if (sanitized)
   ;
  else
   return -1;
 }
 if (!(flags & REFNAME_ALLOW_ONELEVEL) && component_count < 2)
  return -1;
 return 0;
}
