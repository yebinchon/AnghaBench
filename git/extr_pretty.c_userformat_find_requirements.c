
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct userformat_want {int dummy; } ;
struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int strbuf_expand (struct strbuf*,char const*,int ,struct userformat_want*) ;
 int strbuf_release (struct strbuf*) ;
 char* user_format ;
 int userformat_want_item ;

void userformat_find_requirements(const char *fmt, struct userformat_want *w)
{
 struct strbuf dummy = STRBUF_INIT;

 if (!fmt) {
  if (!user_format)
   return;
  fmt = user_format;
 }
 strbuf_expand(&dummy, fmt, userformat_want_item, w);
 strbuf_release(&dummy);
}
