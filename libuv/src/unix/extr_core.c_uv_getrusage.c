
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int tv_usec; int tv_sec; } ;
struct TYPE_7__ {int tv_usec; int tv_sec; } ;
struct TYPE_11__ {int ru_nivcsw; int ru_nvcsw; int ru_nsignals; int ru_msgrcv; int ru_msgsnd; int ru_oublock; int ru_inblock; int ru_nswap; int ru_majflt; int ru_minflt; int ru_isrss; int ru_idrss; int ru_ixrss; int ru_maxrss; TYPE_3__ ru_stime; TYPE_1__ ru_utime; } ;
typedef TYPE_5__ uv_rusage_t ;
struct TYPE_10__ {int tv_usec; int tv_sec; } ;
struct TYPE_8__ {int tv_usec; int tv_sec; } ;
struct rusage {int ru_nivcsw; int ru_nvcsw; int ru_nsignals; int ru_msgrcv; int ru_msgsnd; int ru_oublock; int ru_inblock; int ru_nswap; int ru_majflt; int ru_minflt; int ru_isrss; int ru_idrss; int ru_ixrss; int ru_maxrss; TYPE_4__ ru_stime; TYPE_2__ ru_utime; } ;


 int RUSAGE_SELF ;
 int UV__ERR (int ) ;
 int errno ;
 scalar_t__ getrusage (int ,struct rusage*) ;

int uv_getrusage(uv_rusage_t* rusage) {
  struct rusage usage;

  if (getrusage(RUSAGE_SELF, &usage))
    return UV__ERR(errno);

  rusage->ru_utime.tv_sec = usage.ru_utime.tv_sec;
  rusage->ru_utime.tv_usec = usage.ru_utime.tv_usec;

  rusage->ru_stime.tv_sec = usage.ru_stime.tv_sec;
  rusage->ru_stime.tv_usec = usage.ru_stime.tv_usec;


  rusage->ru_maxrss = usage.ru_maxrss;
  rusage->ru_ixrss = usage.ru_ixrss;
  rusage->ru_idrss = usage.ru_idrss;
  rusage->ru_isrss = usage.ru_isrss;
  rusage->ru_minflt = usage.ru_minflt;
  rusage->ru_majflt = usage.ru_majflt;
  rusage->ru_nswap = usage.ru_nswap;
  rusage->ru_inblock = usage.ru_inblock;
  rusage->ru_oublock = usage.ru_oublock;
  rusage->ru_msgsnd = usage.ru_msgsnd;
  rusage->ru_msgrcv = usage.ru_msgrcv;
  rusage->ru_nsignals = usage.ru_nsignals;
  rusage->ru_nvcsw = usage.ru_nvcsw;
  rusage->ru_nivcsw = usage.ru_nivcsw;


  return 0;
}
