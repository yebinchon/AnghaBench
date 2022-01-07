
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_iocp_port {int dummy; } ;
struct event_base {struct event_iocp_port* iocp; } ;



struct event_iocp_port *
event_base_get_iocp_(struct event_base *base)
{



 return ((void*)0);

}
