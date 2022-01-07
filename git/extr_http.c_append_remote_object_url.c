
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int end_url_with_slash (struct strbuf*,char const*) ;
 int strbuf_addf (struct strbuf*,char*,int,char const*) ;
 int strbuf_addstr (struct strbuf*,char const*) ;

void append_remote_object_url(struct strbuf *buf, const char *url,
         const char *hex,
         int only_two_digit_prefix)
{
 end_url_with_slash(buf, url);

 strbuf_addf(buf, "objects/%.*s/", 2, hex);
 if (!only_two_digit_prefix)
  strbuf_addstr(buf, hex + 2);
}
