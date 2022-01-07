
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int setBlock; int d; } ;
typedef TYPE_1__ uiDateTimePicker ;
typedef int time_t ;
struct tm {int dummy; } ;


 int dateTimeChanged (int ) ;
 int g_date_time_new_from_unix_local (int ) ;
 int g_signal_handler_block (int ,int ) ;
 int g_signal_handler_unblock (int ,int ) ;
 int memcpy (struct tm*,struct tm const*,int) ;
 int mktime (struct tm*) ;
 int uiprivDateTimePickerWidget_setTime (int ,int ) ;

void uiDateTimePickerSetTime(uiDateTimePicker *d, const struct tm *time)
{
 time_t t;
 struct tm tmbuf;


 g_signal_handler_block(d->d, d->setBlock);


 memcpy(&tmbuf, time, sizeof (struct tm));
 t = mktime(&tmbuf);

 uiprivDateTimePickerWidget_setTime(d->d, g_date_time_new_from_unix_local(t));
 dateTimeChanged(d->d);

 g_signal_handler_unblock(d->d, d->setBlock);
}
