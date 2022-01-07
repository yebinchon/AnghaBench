
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getloadavg (double*,int) ;

void uv_loadavg(double avg[3]) {
  (void) getloadavg(avg, 3);
}
