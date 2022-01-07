
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_uri {int port; } ;


 struct evhttp_uri* mm_calloc (int,int) ;

struct evhttp_uri *
evhttp_uri_new(void)
{
 struct evhttp_uri *uri = mm_calloc(sizeof(struct evhttp_uri), 1);
 if (uri)
  uri->port = -1;
 return uri;
}
