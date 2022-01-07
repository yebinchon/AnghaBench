
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int strbuf_ltrim (struct strbuf*) ;
 int strbuf_rtrim (struct strbuf*) ;

void strbuf_trim(struct strbuf *sb)
{
 strbuf_rtrim(sb);
 strbuf_ltrim(sb);
}
