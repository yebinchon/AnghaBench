
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int frame; } ;
typedef TYPE_1__ uiGroup ;


 int gtk_frame_set_label (int ,char const*) ;

void uiGroupSetTitle(uiGroup *g, const char *text)
{
 gtk_frame_set_label(g->frame, text);
}
