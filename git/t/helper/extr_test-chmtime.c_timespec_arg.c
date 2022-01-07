
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;


 long strtol (char const*,char**,int) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static int timespec_arg(const char *arg, long int *set_time, int *set_eq)
{
 char *test;
 const char *timespec = arg;
 *set_eq = (*timespec == '=') ? 1 : 0;
 if (*set_eq) {
  timespec++;
  if (*timespec == '+') {
   *set_eq = 2;
   timespec++;
  }
 }
 *set_time = strtol(timespec, &test, 10);
 if (*test) {
  return 0;
 }
 if ((*set_eq && *set_time < 0) || *set_eq == 2) {
  time_t now = time(((void*)0));
  *set_time += now;
 }
 return 1;
}
