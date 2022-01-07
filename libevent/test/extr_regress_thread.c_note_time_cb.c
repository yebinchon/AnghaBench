
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;


 int event_base_loopbreak (int ) ;
 int evutil_gettimeofday (void*,int *) ;
 int exit_base ;
 void* times ;

__attribute__((used)) static void
note_time_cb(evutil_socket_t fd, short what, void *arg)
{
 evutil_gettimeofday(arg, ((void*)0));
 if (arg == &times[4]) {
  event_base_loopbreak(exit_base);
 }
}
