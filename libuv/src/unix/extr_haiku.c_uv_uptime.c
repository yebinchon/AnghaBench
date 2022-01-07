
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ system_time () ;

int uv_uptime(double* uptime) {

  *uptime = (double)system_time() / 1000000;
  return 0;
}
