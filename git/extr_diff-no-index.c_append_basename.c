
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; char* buf; } ;


 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static void append_basename(struct strbuf *path, const char *dir, const char *file)
{
 const char *tail = strrchr(file, '/');

 strbuf_addstr(path, dir);
 while (path->len && path->buf[path->len - 1] == '/')
  path->len--;
 strbuf_addch(path, '/');
 strbuf_addstr(path, tail ? tail + 1 : file);
}
