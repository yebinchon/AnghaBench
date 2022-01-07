
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addchars (struct strbuf*,int,size_t) ;

__attribute__((used)) static void rerere_strbuf_putconflict(struct strbuf *buf, int ch, size_t size)
{
 strbuf_addchars(buf, ch, size);
 strbuf_addch(buf, '\n');
}
