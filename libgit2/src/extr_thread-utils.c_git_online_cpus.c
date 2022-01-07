
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pst_dynamic {scalar_t__ psd_proc_cnt; } ;
typedef int psd ;
struct TYPE_3__ {scalar_t__ dwNumberOfProcessors; } ;
typedef TYPE_1__ SYSTEM_INFO ;


 int GetSystemInfo (TYPE_1__*) ;
 int _SC_NPROCESSORS_ONLN ;
 int pstat_getdynamic (struct pst_dynamic*,int,size_t,int ) ;
 scalar_t__ sysconf (int ) ;

int git_online_cpus(void)
{
 return 1;
}
