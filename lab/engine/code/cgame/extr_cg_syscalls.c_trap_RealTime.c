
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qtime_t ;


 int CG_REAL_TIME ;
 int syscall (int ,int *) ;

int trap_RealTime(qtime_t *qtime) {
 return syscall( CG_REAL_TIME, qtime );
}
