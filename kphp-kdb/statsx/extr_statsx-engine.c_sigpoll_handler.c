
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGPOLL ;
 int signal (int ,void (*) (int const)) ;
 int sigpoll_cnt ;

__attribute__((used)) static void sigpoll_handler(const int sig) {
  sigpoll_cnt++;
  signal(SIGPOLL, sigpoll_handler);
}
