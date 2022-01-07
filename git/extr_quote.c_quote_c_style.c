
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
typedef int FILE ;


 size_t quote_c_style_counted (char const*,int,struct strbuf*,int *,int) ;

size_t quote_c_style(const char *name, struct strbuf *sb, FILE *fp, int nodq)
{
 return quote_c_style_counted(name, -1, sb, fp, nodq);
}
