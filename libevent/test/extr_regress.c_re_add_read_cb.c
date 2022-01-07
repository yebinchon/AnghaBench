
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int dummy; } ;
typedef int evutil_socket_t ;
typedef scalar_t__ ev_ssize_t ;
typedef int buf ;


 int event_add (struct event*,int *) ;
 int event_base_loopbreak (int ) ;
 int event_get_base (struct event*) ;
 scalar_t__ read (int ,char*,int) ;
 struct event* readd_test_event_last_added ;
 int test_ok ;
 int tt_fail_perror (char*) ;

__attribute__((used)) static void
re_add_read_cb(evutil_socket_t fd, short event, void *arg)
{
 char buf[256];
 struct event *ev_other = arg;
 ev_ssize_t n_read;

 readd_test_event_last_added = ev_other;

 n_read = read(fd, buf, sizeof(buf));

 if (n_read < 0) {
  tt_fail_perror("read");
  event_base_loopbreak(event_get_base(ev_other));
 } else {
  event_add(ev_other, ((void*)0));
  ++test_ok;
 }
}
