
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_3__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct rusage {TYPE_2__ ru_stime; TYPE_1__ ru_utime; } ;


 scalar_t__ getrusage (int,struct rusage*) ;

double get_rusage_time (int who) {
  struct rusage r;
  if (getrusage (who, &r)) { return 0.0; }
  const double res = (double) r.ru_utime.tv_sec + (double) r.ru_stime.tv_sec + 1e-6 * ((double) r.ru_utime.tv_usec + (double) r.ru_stime.tv_usec);
  if (res > 1e9) {
    return 0.0;
  }
  return res;
}
