
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_connection {int dummy; } ;
typedef int ev_uint16_t ;
typedef enum evhttp_cmd_type { ____Placeholder_evhttp_cmd_type } evhttp_cmd_type ;


 int EVHTTP_METHOD_HAS_BODY ;
 int evhttp_method_ (struct evhttp_connection*,int,int*) ;

__attribute__((used)) static int
evhttp_method_may_have_body_(struct evhttp_connection *evcon, enum evhttp_cmd_type type)
{
 ev_uint16_t flags;
 evhttp_method_(evcon, type, &flags);
 return (flags & EVHTTP_METHOD_HAS_BODY) ? 1 : 0;
}
