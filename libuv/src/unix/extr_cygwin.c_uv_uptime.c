
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysinfo {double uptime; } ;


 int UV__ERR (int ) ;
 int errno ;
 scalar_t__ sysinfo (struct sysinfo*) ;

int uv_uptime(double* uptime) {
  struct sysinfo info;

  if (sysinfo(&info) < 0)
    return UV__ERR(errno);

  *uptime = info.uptime;
  return 0;
}
