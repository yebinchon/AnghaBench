
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * mouse; int * keyboard; int window; } ;
typedef TYPE_1__ uiprivDateTimePickerWidget ;


 int GDK_CURRENT_TIME ;
 int gdk_device_ungrab (int *,int ) ;
 int gtk_device_grab_remove (int ,int *) ;

__attribute__((used)) static void endGrab(uiprivDateTimePickerWidget *d)
{
 if (d->keyboard != ((void*)0))
  gdk_device_ungrab(d->keyboard, GDK_CURRENT_TIME);
 gdk_device_ungrab(d->mouse, GDK_CURRENT_TIME);
 gtk_device_grab_remove(d->window, d->mouse);
 d->keyboard = ((void*)0);
 d->mouse = ((void*)0);
}
