
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
typedef int FILE ;


 int strbuf_getdelim (struct strbuf*,int *,char) ;

int strbuf_getline_lf(struct strbuf *sb, FILE *fp)
{
 return strbuf_getdelim(sb, fp, '\n');
}
