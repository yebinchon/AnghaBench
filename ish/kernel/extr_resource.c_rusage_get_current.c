
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int thread_info_t ;
struct TYPE_13__ {int microseconds; int seconds; } ;
struct TYPE_11__ {int microseconds; int seconds; } ;
struct TYPE_14__ {TYPE_6__ system_time; TYPE_4__ user_time; } ;
typedef TYPE_7__ thread_basic_info_data_t ;
struct TYPE_12__ {int usec; int sec; } ;
struct TYPE_10__ {int usec; int sec; } ;
struct rusage_ {TYPE_5__ stime; TYPE_3__ utime; } ;
struct TYPE_9__ {int tv_usec; int tv_sec; } ;
struct TYPE_8__ {int tv_usec; int tv_sec; } ;
struct rusage {TYPE_2__ ru_stime; TYPE_1__ ru_utime; } ;
typedef int mach_msg_type_number_t ;


 int RUSAGE_THREAD ;
 int THREAD_BASIC_INFO ;
 int THREAD_BASIC_INFO_COUNT ;
 int assert (int) ;
 int getrusage (int ,struct rusage*) ;
 int mach_thread_self () ;
 int thread_info (int ,int ,int ,int *) ;

struct rusage_ rusage_get_current() {

    struct rusage_ rusage;

    struct rusage usage;
    int err = getrusage(RUSAGE_THREAD, &usage);
    assert(err == 0);
    rusage.utime.sec = usage.ru_utime.tv_sec;
    rusage.utime.usec = usage.ru_utime.tv_usec;
    rusage.stime.sec = usage.ru_stime.tv_sec;
    rusage.stime.usec = usage.ru_stime.tv_usec;
    return rusage;
}
