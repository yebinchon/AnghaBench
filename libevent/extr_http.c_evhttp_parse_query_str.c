
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evkeyvalq {int dummy; } ;


 int evhttp_parse_query_impl (char const*,struct evkeyvalq*,int ,int ) ;

int
evhttp_parse_query_str(const char *uri, struct evkeyvalq *headers)
{
 return evhttp_parse_query_impl(uri, headers, 0, 0);
}
