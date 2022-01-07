
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 char* strbuf_detach (struct strbuf*,int *) ;
 int strbuf_vaddf (struct strbuf*,char const*,int ) ;

char *xstrvfmt(const char *fmt, va_list ap)
{
 struct strbuf buf = STRBUF_INIT;
 strbuf_vaddf(&buf, fmt, ap);
 return strbuf_detach(&buf, ((void*)0));
}
