
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;
typedef int nstime_t ;


 int gettimeofday (struct timeval*,int *) ;
 int nstime_init2 (int *,int ,int) ;

__attribute__((used)) static void
nstime_get(nstime_t *time) {
 struct timeval tv;

 gettimeofday(&tv, ((void*)0));
 nstime_init2(time, tv.tv_sec, tv.tv_usec * 1000);
}
