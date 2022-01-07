
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {double tv_sec; int tv_usec; } ;
struct TYPE_3__ {double tv_sec; int tv_usec; } ;
struct rusage {TYPE_2__ ru_stime; TYPE_1__ ru_utime; } ;


 int RUSAGE_SELF ;
 scalar_t__ getrusage (int ,struct rusage*) ;

__attribute__((used)) static inline double get_rusage_time (void) {
  struct rusage r;
  if (getrusage (RUSAGE_SELF, &r)) { return 0.0; }
  return r.ru_utime.tv_sec + r.ru_stime.tv_sec + 1e-6 * (r.ru_utime.tv_usec + r.ru_stime.tv_usec);
}
