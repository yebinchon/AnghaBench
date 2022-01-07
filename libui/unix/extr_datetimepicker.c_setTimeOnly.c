
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int calendar; int box; int hasDate; } ;
typedef TYPE_1__ uiprivDateTimePickerWidget ;


 int FALSE ;
 int GTK_CONTAINER (int ) ;
 int gtk_container_remove (int ,int ) ;

__attribute__((used)) static void setTimeOnly(uiprivDateTimePickerWidget *d)
{
 d->hasDate = FALSE;
 gtk_container_remove(GTK_CONTAINER(d->box), d->calendar);
}
