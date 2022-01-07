
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_overlapped {int cb; } ;
typedef int iocp_callback ;


 int memset (struct event_overlapped*,int ,int) ;

void
event_overlapped_init_(struct event_overlapped *o, iocp_callback cb)
{
 memset(o, 0, sizeof(struct event_overlapped));
 o->cb = cb;
}
