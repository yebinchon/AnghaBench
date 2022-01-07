
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int secondsBlock; int seconds; int minutesBlock; int minutes; int hoursBlock; int hours; int ampmBlock; int ampm; scalar_t__ hasTime; int calendarBlock; int calendar; scalar_t__ hasDate; } ;
typedef TYPE_1__ uiprivDateTimePickerWidget ;
typedef int gint ;
typedef int GDateTime ;


 int GTK_CALENDAR (int ) ;
 int GTK_SPIN_BUTTON (int ) ;
 int g_date_time_get_hour (int *) ;
 int g_date_time_get_minute (int *) ;
 int g_date_time_get_seconds (int *) ;
 int g_date_time_get_ymd (int *,int*,int*,int*) ;
 int g_date_time_unref (int *) ;
 int g_signal_handler_block (int ,int ) ;
 int g_signal_handler_unblock (int ,int ) ;
 int gtk_calendar_select_day (int ,int) ;
 int gtk_calendar_select_month (int ,int,int) ;
 int setRealSpinValue (int ,int,int ) ;

__attribute__((used)) static void uiprivDateTimePickerWidget_setTime(uiprivDateTimePickerWidget *d, GDateTime *dt)
{
 gint year, month, day;
 gint hour;


 if (d->hasDate) {
  g_date_time_get_ymd(dt, &year, &month, &day);
  month--;
  g_signal_handler_block(d->calendar, d->calendarBlock);
  gtk_calendar_select_month(GTK_CALENDAR(d->calendar), month, year);
  gtk_calendar_select_day(GTK_CALENDAR(d->calendar), day);
  g_signal_handler_unblock(d->calendar, d->calendarBlock);
 }
 if (d->hasTime) {
  hour = g_date_time_get_hour(dt);
  if (hour >= 12) {
   hour -= 12;
   setRealSpinValue(GTK_SPIN_BUTTON(d->ampm), 1, d->ampmBlock);
  }
  setRealSpinValue(GTK_SPIN_BUTTON(d->hours), hour, d->hoursBlock);
  setRealSpinValue(GTK_SPIN_BUTTON(d->minutes), g_date_time_get_minute(dt), d->minutesBlock);
  setRealSpinValue(GTK_SPIN_BUTTON(d->seconds), g_date_time_get_seconds(dt), d->secondsBlock);
 }
 g_date_time_unref(dt);
}
