
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char const* buf; } ;


 char* cleanup_path (char const*) ;
 int strbuf_remove (struct strbuf*,int ,int) ;

__attribute__((used)) static void strbuf_cleanup_path(struct strbuf *sb)
{
 const char *path = cleanup_path(sb->buf);
 if (path > sb->buf)
  strbuf_remove(sb, 0, path - sb->buf);
}
