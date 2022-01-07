
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_connection {int ext_method_cmp; } ;
typedef int evhttp_ext_method_cb ;



void
evhttp_connection_set_ext_method_cmp(struct evhttp_connection *evcon,
 evhttp_ext_method_cb cmp)
{
 evcon->ext_method_cmp = cmp;
}
