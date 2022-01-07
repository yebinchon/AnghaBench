
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiprivDateTimePickerWidget ;


 int changedSignal ;
 int g_signal_emit (int *,int ,int ) ;
 int setLabel (int *) ;

__attribute__((used)) static void dateTimeChanged(uiprivDateTimePickerWidget *d)
{
 g_signal_emit(d, changedSignal, 0);
 setLabel(d);

}
