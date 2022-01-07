
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp {int ext_method_cmp; } ;
typedef int evhttp_ext_method_cb ;



void
evhttp_set_ext_method_cmp(struct evhttp *http, evhttp_ext_method_cb cmp)
{
 http->ext_method_cmp = cmp;
}
