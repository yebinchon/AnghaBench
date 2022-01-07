
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;


 int RESERVED_NON_WS ;
 int _ (char*) ;
 int strbuf_addf (struct strbuf*,int ,char const) ;
 scalar_t__ strchr (int ,char const) ;

__attribute__((used)) static int has_reserved_character(
 struct strbuf *sub_spec, struct strbuf *errbuf)
{
 const char *c = sub_spec->buf;
 while (*c) {
  if (*c <= ' ' || strchr(RESERVED_NON_WS, *c)) {
   strbuf_addf(
    errbuf,
    _("must escape char in sub-filter-spec: '%c'"),
    *c);
   return 1;
  }
  c++;
 }

 return 0;
}
