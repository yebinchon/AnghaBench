
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int d; } ;
typedef TYPE_1__ uiDateTimePicker ;
typedef int time_t ;
struct tm {int dummy; } ;
typedef int GDateTime ;


 int g_date_time_to_unix (int *) ;
 int g_date_time_unref (int *) ;
 struct tm* localtime (int *) ;
 int memcpy (struct tm*,struct tm*,int) ;
 int * selected (int ) ;

void uiDateTimePickerTime(uiDateTimePicker *d, struct tm *time)
{
 time_t t;
 struct tm tmbuf;
 GDateTime *dt;

 dt = selected(d->d);
 t = g_date_time_to_unix(dt);
 g_date_time_unref(dt);



 tmbuf = *localtime(&t);
 memcpy(time, &tmbuf, sizeof (struct tm));
}
