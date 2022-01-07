
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int time_t ;
struct tm {scalar_t__ tm_gmtoff; } ;
struct TYPE_6__ {scalar_t__ QuadPart; int HighPart; int LowPart; } ;
typedef TYPE_1__ ULARGE_INTEGER ;
struct TYPE_7__ {int dwHighDateTime; int dwLowDateTime; } ;
typedef int SYSTEMTIME ;
typedef int LONGLONG ;
typedef TYPE_2__ FILETIME ;


 scalar_t__ FileTimeToSystemTime (TYPE_2__*,int *) ;
 scalar_t__ SystemTimeToFileTime (int *,TYPE_2__*) ;
 scalar_t__ SystemTimeToTzSpecificLocalTime (int ,int *,int *) ;
 int UnixTimeToFileTime (int,TYPE_2__*) ;
 int _tzset () ;
 int localtime_r (int *,struct tm*) ;

double jerry_port_get_local_time_zone_adjustment (double unix_ms,
                                                  bool is_utc)
{
  (void) unix_ms;
  (void) is_utc;
  return 0.0;

}
