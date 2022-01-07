
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * box; int oldvalign; int widget; int oldvexpand; int oldhalign; int oldhexpand; int parent; int c; } ;
typedef TYPE_1__ uiprivChild ;


 int TRUE ;
 int gtk_widget_destroy (int *) ;
 int gtk_widget_set_halign (int ,int ) ;
 int gtk_widget_set_hexpand (int ,int ) ;
 int gtk_widget_set_valign (int ,int ) ;
 int gtk_widget_set_vexpand (int ,int ) ;
 int uiControlSetParent (int ,int *) ;
 int uiUnixControl (int ) ;
 int uiUnixControlSetContainer (int ,int ,int ) ;
 int uiprivFree (TYPE_1__*) ;

void uiprivChildRemove(uiprivChild *c)
{
 uiControlSetParent(c->c, ((void*)0));
 uiUnixControlSetContainer(uiUnixControl(c->c), c->parent, TRUE);

 gtk_widget_set_hexpand(c->widget, c->oldhexpand);
 gtk_widget_set_halign(c->widget, c->oldhalign);
 gtk_widget_set_vexpand(c->widget, c->oldvexpand);
 gtk_widget_set_valign(c->widget, c->oldvalign);

 if (c->box != ((void*)0))
  gtk_widget_destroy(c->box);

 uiprivFree(c);
}
