
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct timeval {scalar_t__ tv_sec; } ;
typedef int info ;




 int UV__ERR (int ) ;
 int errno ;
 scalar_t__ sysctl (int*,int,struct timeval*,size_t*,int *,int ) ;
 scalar_t__ time (int *) ;

int uv_uptime(double* uptime) {
  time_t now;
  struct timeval info;
  size_t size = sizeof(info);
  static int which[] = {129, 128};

  if (sysctl(which, 2, &info, &size, ((void*)0), 0))
    return UV__ERR(errno);

  now = time(((void*)0));

  *uptime = (double)(now - info.tv_sec);
  return 0;
}
