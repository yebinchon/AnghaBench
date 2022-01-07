
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cc; } ;
typedef TYPE_1__ areaWidget ;


 int GDK_BUTTON_MOTION_MASK ;
 int GDK_BUTTON_PRESS_MASK ;
 int GDK_BUTTON_RELEASE_MASK ;
 int GDK_ENTER_NOTIFY_MASK ;
 int GDK_KEY_PRESS_MASK ;
 int GDK_KEY_RELEASE_MASK ;
 int GDK_LEAVE_NOTIFY_MASK ;
 int GDK_POINTER_MOTION_MASK ;
 int GTK_WIDGET (TYPE_1__*) ;
 int TRUE ;
 int gtk_widget_add_events (int ,int) ;
 int gtk_widget_set_can_focus (int ,int ) ;
 int uiprivClickCounterReset (int *) ;

__attribute__((used)) static void areaWidget_init(areaWidget *aw)
{

 gtk_widget_add_events(GTK_WIDGET(aw),
  GDK_POINTER_MOTION_MASK |
  GDK_BUTTON_MOTION_MASK |
  GDK_BUTTON_PRESS_MASK |
  GDK_BUTTON_RELEASE_MASK |
  GDK_KEY_PRESS_MASK |
  GDK_KEY_RELEASE_MASK |
  GDK_ENTER_NOTIFY_MASK |
  GDK_LEAVE_NOTIFY_MASK);

 gtk_widget_set_can_focus(GTK_WIDGET(aw), TRUE);

 uiprivClickCounterReset(&(aw->cc));
}
