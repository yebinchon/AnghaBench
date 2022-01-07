
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int member_0; } ;
struct itimerval {TYPE_1__ member_0; } ;


 int ITIMER_REAL ;
 int SIGALRM ;
 int SIG_IGN ;
 scalar_t__ progress_testing ;
 scalar_t__ progress_update ;
 int setitimer (int ,struct itimerval*,int *) ;
 int signal (int ,int ) ;

__attribute__((used)) static void clear_progress_signal(void)
{
 struct itimerval v = {{0,},};

 if (progress_testing)
  return;

 setitimer(ITIMER_REAL, &v, ((void*)0));
 signal(SIGALRM, SIG_IGN);
 progress_update = 0;
}
