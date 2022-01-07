
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_3__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct itimerval {TYPE_2__ it_value; TYPE_1__ it_interval; } ;


 int ITIMER_REAL ;
 int perror (char*) ;
 scalar_t__ setitimer (int ,struct itimerval*,struct itimerval*) ;

__attribute__((used)) static void
tick()
{
 struct itimerval it, oit;

 it.it_interval.tv_sec = 0;
 it.it_interval.tv_usec = 0;
 it.it_value.tv_sec = 0;
 it.it_value.tv_usec = 16665;
 if (setitimer(ITIMER_REAL, &it, &oit) < 0)
  perror("tick");
}
