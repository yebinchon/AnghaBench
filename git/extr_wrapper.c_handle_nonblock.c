
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int fd; short events; } ;


 int EAGAIN ;
 int EWOULDBLOCK ;
 int poll (struct pollfd*,int,int) ;

__attribute__((used)) static int handle_nonblock(int fd, short poll_events, int err)
{
 struct pollfd pfd;

 if (err != EAGAIN && err != EWOULDBLOCK)
  return 0;

 pfd.fd = fd;
 pfd.events = poll_events;





 poll(&pfd, 1, -1);
 return 1;
}
