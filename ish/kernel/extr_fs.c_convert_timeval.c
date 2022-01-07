
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval_ {int usec; int sec; } ;
struct timespec {int tv_nsec; int tv_sec; } ;



__attribute__((used)) static struct timespec convert_timeval(struct timeval_ t) {
    struct timespec ts;
    ts.tv_sec = t.sec;
    ts.tv_nsec = t.usec * 1000;
    return ts;
}
