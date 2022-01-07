
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;


 int base ;
 int event_base_loopbreak (int ) ;

__attribute__((used)) static void
on_sigint(evutil_socket_t sig, short events, void *arg)
{
 event_base_loopbreak(base);
}
