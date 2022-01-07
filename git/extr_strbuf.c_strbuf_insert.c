
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int strbuf_splice (struct strbuf*,size_t,int ,void const*,size_t) ;

void strbuf_insert(struct strbuf *sb, size_t pos, const void *data, size_t len)
{
 strbuf_splice(sb, pos, 0, data, len);
}
