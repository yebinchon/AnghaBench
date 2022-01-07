
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_uri {char const* query; } ;



const char *
evhttp_uri_get_query(const struct evhttp_uri *uri)
{
 return uri->query;
}
