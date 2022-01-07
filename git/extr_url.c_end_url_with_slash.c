
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_complete (struct strbuf*,char) ;

void end_url_with_slash(struct strbuf *buf, const char *url)
{
 strbuf_addstr(buf, url);
 strbuf_complete(buf, '/');
}
