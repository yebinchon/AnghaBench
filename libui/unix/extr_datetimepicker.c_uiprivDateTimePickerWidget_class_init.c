
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uiprivDateTimePickerWidgetClass ;
struct TYPE_2__ {int finalize; int dispose; } ;


 TYPE_1__* G_OBJECT_CLASS (int *) ;
 int G_SIGNAL_RUN_LAST ;
 int G_TYPE_FROM_CLASS (int *) ;
 int G_TYPE_NONE ;
 int changedSignal ;
 int g_signal_new (char*,int ,int ,int ,int *,int *,int *,int ,int ) ;
 int uiprivDateTimePickerWidget_dispose ;
 int uiprivDateTimePickerWidget_finalize ;

__attribute__((used)) static void uiprivDateTimePickerWidget_class_init(uiprivDateTimePickerWidgetClass *class)
{
 G_OBJECT_CLASS(class)->dispose = uiprivDateTimePickerWidget_dispose;
 G_OBJECT_CLASS(class)->finalize = uiprivDateTimePickerWidget_finalize;

 changedSignal = g_signal_new("changed",
  G_TYPE_FROM_CLASS(class),
  G_SIGNAL_RUN_LAST,
  0,
  ((void*)0), ((void*)0), ((void*)0),
  G_TYPE_NONE,
  0);
}
