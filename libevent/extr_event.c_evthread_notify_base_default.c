
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int * th_notify_fd; } ;


 int EVUTIL_ERR_IS_EAGAIN (int ) ;
 int errno ;
 int send (int ,char*,int,int ) ;
 int write (int ,char*,int) ;

__attribute__((used)) static int
evthread_notify_base_default(struct event_base *base)
{
 char buf[1];
 int r;
 buf[0] = (char) 0;



 r = write(base->th_notify_fd[1], buf, 1);

 return (r < 0 && ! EVUTIL_ERR_IS_EAGAIN(errno)) ? -1 : 0;
}
