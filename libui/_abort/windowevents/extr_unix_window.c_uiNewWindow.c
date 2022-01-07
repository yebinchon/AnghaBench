
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uiWindow ;
struct TYPE_4__ {int widget; } ;


 int G_CALLBACK (int ) ;
 int defaultOnPositionContentSizeChanged ;
 int g_signal_connect (int ,char*,int ,TYPE_1__*) ;
 int onConfigure ;
 int uiWindowOnPositionChanged (TYPE_1__*,int ,int *) ;
 TYPE_1__* w ;

uiWindow *uiNewWindow(const char *title, int width, int height, int hasMenubar)
{

 g_signal_connect(w->widget, "configure-event", G_CALLBACK(onConfigure), w);


 uiWindowOnPositionChanged(w, defaultOnPositionContentSizeChanged, ((void*)0));

}
