
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int window; } ;
typedef TYPE_1__ uiprivDateTimePickerWidget ;


 int FALSE ;
 int endGrab (TYPE_1__*) ;
 int gtk_widget_hide (int ) ;
 int setActive (TYPE_1__*,int ) ;

__attribute__((used)) static void hidePopup(uiprivDateTimePickerWidget *d)
{
 endGrab(d);
 gtk_widget_hide(d->window);
 setActive(d, FALSE);
}
