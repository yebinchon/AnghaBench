
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_uri {int port; } ;



int
evhttp_uri_set_port(struct evhttp_uri *uri, int port)
{
 if (port < -1)
  return -1;
 uri->port = port;
 return 0;
}
