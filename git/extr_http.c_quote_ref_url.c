
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int end_url_with_slash (struct strbuf*,char const*) ;
 scalar_t__ needs_quote (int) ;
 int strbuf_addch (struct strbuf*,char const) ;
 int strbuf_addf (struct strbuf*,char*,int) ;
 char* strbuf_detach (struct strbuf*,int *) ;

__attribute__((used)) static char *quote_ref_url(const char *base, const char *ref)
{
 struct strbuf buf = STRBUF_INIT;
 const char *cp;
 int ch;

 end_url_with_slash(&buf, base);

 for (cp = ref; (ch = *cp) != 0; cp++)
  if (needs_quote(ch))
   strbuf_addf(&buf, "%%%02x", ch);
  else
   strbuf_addch(&buf, *cp);

 return strbuf_detach(&buf, ((void*)0));
}
