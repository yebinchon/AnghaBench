
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dwNumberOfProcessors; } ;
typedef TYPE_1__ SYSTEM_INFO ;


 int GetSystemInfo (TYPE_1__*) ;
 int _SC_NPROCESSORS_ONLN ;
 scalar_t__ sysconf (int ) ;

int hc_get_processor_count ()
{
  int cnt = 0;
  cnt = (int) sysconf (_SC_NPROCESSORS_ONLN);



  return cnt;
}
