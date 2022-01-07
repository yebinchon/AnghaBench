
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {double tv_sec; } ;


 int CLOCK_MONOTONIC ;
 int UV__ERR (int ) ;
 int clock_gettime (int ,struct timespec*) ;
 int errno ;

int uv_uptime(double* uptime) {
  int r;
  struct timespec sp;
  r = clock_gettime(CLOCK_MONOTONIC, &sp);
  if (r)
    return UV__ERR(errno);

  *uptime = sp.tv_sec;
  return 0;
}
