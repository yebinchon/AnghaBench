
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char const* buf; } ;


 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char const*) ;

const char *strbuf_join_argv(struct strbuf *buf,
        int argc, const char **argv, char delim)
{
 if (!argc)
  return buf->buf;

 strbuf_addstr(buf, *argv);
 while (--argc) {
  strbuf_addch(buf, delim);
  strbuf_addstr(buf, *(++argv));
 }

 return buf->buf;
}
