
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qtime_t ;


 int UI_REAL_TIME ;
 int syscall (int ,int *) ;

int trap_RealTime(qtime_t *qtime) {
 return syscall( UI_REAL_TIME, qtime );
}
