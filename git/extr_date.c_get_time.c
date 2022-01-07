
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; int tv_sec; } ;


 int atoi (char const*) ;
 char* getenv (char*) ;
 int gettimeofday (struct timeval*,int *) ;

__attribute__((used)) static void get_time(struct timeval *now)
{
 const char *x;

 x = getenv("GIT_TEST_DATE_NOW");
 if (x) {
  now->tv_sec = atoi(x);
  now->tv_usec = 0;
 }
 else
  gettimeofday(now, ((void*)0));
}
