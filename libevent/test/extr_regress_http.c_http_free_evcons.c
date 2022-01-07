
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_connection {int dummy; } ;


 int evhttp_connection_free (struct evhttp_connection*) ;
 int free (struct evhttp_connection**) ;

__attribute__((used)) static void
http_free_evcons(struct evhttp_connection **evcons)
{
 struct evhttp_connection *evcon, **orig = evcons;

 if (!evcons)
  return;

 while ((evcon = *evcons++)) {
  evhttp_connection_free(evcon);
 }
 free(orig);
}
