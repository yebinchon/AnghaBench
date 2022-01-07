
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 char* memchr (char const*,char,int) ;
 int strbuf_add (struct strbuf*,char const*,int) ;
 char* url_decode_internal (char const**,int,int *,struct strbuf*,int ) ;

char *url_decode_mem(const char *url, int len)
{
 struct strbuf out = STRBUF_INIT;
 const char *colon = memchr(url, ':', len);


 if (colon && url < colon) {
  strbuf_add(&out, url, colon - url);
  len -= colon - url;
  url = colon;
 }
 return url_decode_internal(&url, len, ((void*)0), &out, 0);
}
