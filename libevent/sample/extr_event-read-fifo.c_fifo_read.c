
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int dummy; } ;
typedef scalar_t__ evutil_socket_t ;
typedef int buf ;
typedef int HANDLE ;
typedef size_t DWORD ;


 int ReadFile (int ,char*,int,size_t*,int *) ;
 int event_base_loopbreak (int ) ;
 int event_del (struct event*) ;
 int event_get_base (struct event*) ;
 int fprintf (int ,char*,...) ;
 int perror (char*) ;
 int read (scalar_t__,char*,int) ;
 int stderr ;
 int stdout ;

__attribute__((used)) static void
fifo_read(evutil_socket_t fd, short event, void *arg)
{
 char buf[255];
 int len;
 struct event *ev = arg;




 fprintf(stderr, "fifo_read called with fd: %d, event: %d, arg: %p\n",
     (int)fd, event, arg);
 len = read(fd, buf, sizeof(buf) - 1);

 if (len <= 0) {
  if (len == -1)
   perror("read");
  else if (len == 0)
   fprintf(stderr, "Connection closed\n");
  event_del(ev);
  event_base_loopbreak(event_get_base(ev));
  return;
 }

 buf[len] = '\0';

 fprintf(stdout, "Read: %s\n", buf);
}
