
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; scalar_t__ alloc; } ;


 int free (int ) ;
 int strbuf_init (struct strbuf*,int ) ;

void strbuf_release(struct strbuf *sb)
{
 if (sb->alloc) {
  free(sb->buf);
  strbuf_init(sb, 0);
 }
}
