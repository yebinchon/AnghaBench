
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int quote_c_style (char const*,struct strbuf*,int *,int) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 char* strbuf_detach (struct strbuf*,int *) ;

__attribute__((used)) static char *quote_two(const char *one, const char *two)
{
 int need_one = quote_c_style(one, ((void*)0), ((void*)0), 1);
 int need_two = quote_c_style(two, ((void*)0), ((void*)0), 1);
 struct strbuf res = STRBUF_INIT;

 if (need_one + need_two) {
  strbuf_addch(&res, '"');
  quote_c_style(one, &res, ((void*)0), 1);
  quote_c_style(two, &res, ((void*)0), 1);
  strbuf_addch(&res, '"');
 } else {
  strbuf_addstr(&res, one);
  strbuf_addstr(&res, two);
 }
 return strbuf_detach(&res, ((void*)0));
}
