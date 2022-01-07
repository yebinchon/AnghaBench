
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int strbuf_splice (struct strbuf*,size_t,size_t,char*,int ) ;

void strbuf_remove(struct strbuf *sb, size_t pos, size_t len)
{
 strbuf_splice(sb, pos, len, "", 0);
}
