
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sigaction {int sa_flags; int sa_mask; int sa_handler; } ;
struct TYPE_2__ {int tv_sec; scalar_t__ tv_usec; } ;
struct itimerval {TYPE_1__ it_interval; TYPE_1__ it_value; } ;
typedef int sa ;


 int ITIMER_REAL ;
 int SA_RESTART ;
 int SIGALRM ;
 int memset (struct sigaction*,int ,int) ;
 int progress_interval ;
 scalar_t__ progress_testing ;
 scalar_t__ progress_update ;
 int setitimer (int ,struct itimerval*,int *) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;

__attribute__((used)) static void set_progress_signal(void)
{
 struct sigaction sa;
 struct itimerval v;

 if (progress_testing)
  return;

 progress_update = 0;

 memset(&sa, 0, sizeof(sa));
 sa.sa_handler = progress_interval;
 sigemptyset(&sa.sa_mask);
 sa.sa_flags = SA_RESTART;
 sigaction(SIGALRM, &sa, ((void*)0));

 v.it_interval.tv_sec = 1;
 v.it_interval.tv_usec = 0;
 v.it_value = v.it_interval;
 setitimer(ITIMER_REAL, &v, ((void*)0));
}
