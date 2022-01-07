
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; } ;


 int assert (int ) ;
 int http_sent ;
 int http_sent_size ;
 int no_cache_headers ;
 int strlen (char const*) ;
 int write_basic_http_header (struct connection*,int,int ,int,int ,char*) ;
 int write_out (int *,char const*,int) ;

void http_return (struct connection *c, const char *str) {
  assert (str != ((void*)0));
  int len = strlen (str);
  http_sent++;
  http_sent_size += len;
  write_basic_http_header (c, 200, 0, len, no_cache_headers, "text/javascript; charset=UTF-8");
  write_out (&c->Out, str, len);
}
