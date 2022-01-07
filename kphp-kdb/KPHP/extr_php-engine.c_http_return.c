
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; } ;


 int no_cache_headers ;
 scalar_t__ strlen (char const*) ;
 int write_basic_http_header (struct connection*,int,int ,int,int ,char*) ;
 int write_out (int *,char const*,int) ;

void http_return (struct connection *c, const char *str, int len) {
  if (len < 0) {
    len = (int)strlen (str);
  }
  write_basic_http_header (c, 200, 0, len, no_cache_headers, "text/javascript; charset=UTF-8");
  write_out (&c->Out, str, len);
}
