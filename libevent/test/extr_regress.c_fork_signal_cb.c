
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;


 int event_del (void*) ;

__attribute__((used)) static void
fork_signal_cb(evutil_socket_t fd, short events, void *arg)
{
 event_del(arg);
}
