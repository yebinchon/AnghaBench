
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ evutil_socket_t ;


 int EVUTIL_ASSERT (int) ;
 int F_GETFL ;
 int O_NONBLOCK ;
 int event_debug_mode_on_ ;
 int fcntl (scalar_t__,int ,int *) ;

__attribute__((used)) static void event_debug_assert_socket_nonblocking_(evutil_socket_t fd)
{
 if (!event_debug_mode_on_)
  return;
 if (fd < 0)
  return;


 {
  int flags;
  if ((flags = fcntl(fd, F_GETFL, ((void*)0))) >= 0) {
   EVUTIL_ASSERT(flags & O_NONBLOCK);
  }
 }

}
