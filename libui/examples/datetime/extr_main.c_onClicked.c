
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiButton ;
typedef scalar_t__ time_t ;
struct tm {int dummy; } ;


 int dtboth ;
 int dtdate ;
 int dttime ;
 struct tm* localtime (scalar_t__*) ;
 scalar_t__ time (int *) ;
 int uiDateTimePickerSetTime (int ,struct tm*) ;

void onClicked(uiButton *b, void *data)
{
 intptr_t now;
 time_t t;
 struct tm tmbuf;

 now = (intptr_t) data;
 t = 0;
 if (now)
  t = time(((void*)0));
 tmbuf = *localtime(&t);

 if (now) {
  uiDateTimePickerSetTime(dtdate, &tmbuf);
  uiDateTimePickerSetTime(dttime, &tmbuf);
 } else
  uiDateTimePickerSetTime(dtboth, &tmbuf);
}
