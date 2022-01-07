
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {double tv_usec; double tv_sec; } ;


 int gettimeofday (struct timeval*,int *) ;

__attribute__((used)) static double gettimedouble(void) {
    struct timeval tv;
    gettimeofday(&tv, ((void*)0));
    return tv.tv_usec * 0.000001 + tv.tv_sec;
}
