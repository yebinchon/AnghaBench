
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_connection {char* address; int port; } ;
typedef int ev_uint16_t ;



void
evhttp_connection_get_peer(struct evhttp_connection *evcon,
    char **address, ev_uint16_t *port)
{
 *address = evcon->address;
 *port = evcon->port;
}
