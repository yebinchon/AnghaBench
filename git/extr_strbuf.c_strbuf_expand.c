
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
typedef size_t (* expand_fn_t ) (struct strbuf*,char const*,void*) ;


 int strbuf_add (struct strbuf*,char const*,int) ;
 int strbuf_addch (struct strbuf*,char) ;
 char* strchrnul (char const*,char) ;

void strbuf_expand(struct strbuf *sb, const char *format, expand_fn_t fn,
     void *context)
{
 for (;;) {
  const char *percent;
  size_t consumed;

  percent = strchrnul(format, '%');
  strbuf_add(sb, format, percent - format);
  if (!*percent)
   break;
  format = percent + 1;

  if (*format == '%') {
   strbuf_addch(sb, '%');
   format++;
   continue;
  }

  consumed = fn(sb, format, context);
  if (consumed)
   format += consumed;
  else
   strbuf_addch(sb, '%');
 }
}
