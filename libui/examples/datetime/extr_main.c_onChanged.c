
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiDateTimePicker ;
struct tm {int dummy; } ;
typedef int buf ;


 int strftime (char*,int,int ,struct tm*) ;
 int timeFormat (int *) ;
 int uiDateTimePickerTime (int *,struct tm*) ;
 int uiLabel (void*) ;
 int uiLabelSetText (int ,char*) ;

void onChanged(uiDateTimePicker *d, void *data)
{
 struct tm time;
 char buf[64];

 uiDateTimePickerTime(d, &time);
 strftime(buf, sizeof (buf), timeFormat(d), &time);
 uiLabelSetText(uiLabel(data), buf);
}
