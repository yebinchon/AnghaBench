
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {scalar_t__ len; } ;


 struct strbuf STRBUF_INIT ;
 int strbuf_addbuf (struct strbuf*,struct strbuf*) ;
 int strbuf_realpath (struct strbuf*,char const*,int) ;
 int strbuf_release (struct strbuf*) ;

void strbuf_add_real_path(struct strbuf *sb, const char *path)
{
 if (sb->len) {
  struct strbuf resolved = STRBUF_INIT;
  strbuf_realpath(&resolved, path, 1);
  strbuf_addbuf(sb, &resolved);
  strbuf_release(&resolved);
 } else
  strbuf_realpath(sb, path, 1);
}
