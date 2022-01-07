
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ncpu ;
typedef int name ;


 int CTL_HW ;
 int HW_AVAILCPU ;
 int _SC_NPROCESSORS_ONLN ;
 int h2o_error_printf (char*) ;
 int sysconf (int ) ;
 scalar_t__ sysctl (int*,int,int*,size_t*,int *,int ) ;

size_t h2o_numproc(void)
{
    return 1;

}
