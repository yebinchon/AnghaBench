
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double getnanotime () ;
 int printf (char*,double) ;
 scalar_t__ strtod (char const*,int *) ;

__attribute__((used)) static void getnanos(const char **argv)
{
 double seconds = getnanotime() / 1.0e9;

 if (*argv)
  seconds -= strtod(*argv, ((void*)0));
 printf("%lf\n", seconds);
}
