
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;



__attribute__((used)) static struct timeval _convert_timeout_to_ts (double t) {
  struct timeval tv;
  int secs = 0;

  secs = (int)t;
  tv.tv_sec = secs;
  tv.tv_usec = (int)(((t - secs) * 1e6) / 1000000);
  return tv;
}
