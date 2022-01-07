
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int seconds; int minutes; int ampm; int hours; scalar_t__ hasTime; int calendar; scalar_t__ hasDate; } ;
typedef TYPE_1__ uiprivDateTimePickerWidget ;
typedef int guint ;
typedef int GDateTime ;


 int GTK_CALENDAR (int ) ;
 int GTK_SPIN_BUTTON (int ) ;
 int * g_date_time_new_local (int,int,int,int,int,int) ;
 int gtk_calendar_get_date (int ,int*,int*,int*) ;
 scalar_t__ realSpinValue (int ) ;

__attribute__((used)) static GDateTime *selected(uiprivDateTimePickerWidget *d)
{

 guint year = 1970, month = 1, day = 1;
 guint hour = 0, minute = 0, second = 0;

 if (d->hasDate) {
  gtk_calendar_get_date(GTK_CALENDAR(d->calendar), &year, &month, &day);
  month++;
 }
 if (d->hasTime) {
  hour = realSpinValue(GTK_SPIN_BUTTON(d->hours));
  if (realSpinValue(GTK_SPIN_BUTTON(d->ampm)) != 0)
   hour += 12;
  minute = realSpinValue(GTK_SPIN_BUTTON(d->minutes));
  second = realSpinValue(GTK_SPIN_BUTTON(d->seconds));
 }
 return g_date_time_new_local(year, month, day, hour, minute, second);
}
