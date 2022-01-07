
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SIGTERM_WAIT_TIMEOUT ;
 int close (int) ;
 int epoll_close (int) ;
 int hts_stopped ;
 int http_sfd ;
 scalar_t__ precise_now ;
 scalar_t__ sigterm_time ;

void hts_stop() {
  if (hts_stopped) {
    return;
  }
  if (http_sfd != -1) {
    epoll_close (http_sfd);
    close (http_sfd);
    http_sfd = -1;
  }
  sigterm_time = precise_now + SIGTERM_WAIT_TIMEOUT;
  hts_stopped = 1;
}
