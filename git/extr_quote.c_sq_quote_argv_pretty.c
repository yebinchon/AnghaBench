
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int sq_append_quote_argv_pretty (struct strbuf*,char const**) ;
 int strbuf_addch (struct strbuf*,char) ;

void sq_quote_argv_pretty(struct strbuf *dst, const char **argv)
{
 if (argv[0])
  strbuf_addch(dst, ' ');
 sq_append_quote_argv_pretty(dst, argv);
}
