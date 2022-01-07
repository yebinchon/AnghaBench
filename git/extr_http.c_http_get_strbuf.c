
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct http_get_options {int dummy; } ;


 int HTTP_REQUEST_STRBUF ;
 int http_request_reauth (char const*,struct strbuf*,int ,struct http_get_options*) ;

int http_get_strbuf(const char *url,
      struct strbuf *result,
      struct http_get_options *options)
{
 return http_request_reauth(url, result, HTTP_REQUEST_STRBUF, options);
}
