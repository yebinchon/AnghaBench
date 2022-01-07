
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGFPE ;
 int longjmp (int ,int) ;
 int preserve ;
 int signal (int ,void (*) (int)) ;

void signalHandler(int sig) {
  signal(SIGFPE, signalHandler);
  longjmp(preserve, sig);
  }
