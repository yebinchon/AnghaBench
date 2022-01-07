
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cc; } ;
typedef TYPE_1__ uiColorButton ;
struct TYPE_6__ {double red; double green; double blue; double alpha; } ;
typedef TYPE_2__ GdkRGBA ;


 int gtk_color_chooser_set_rgba (int ,TYPE_2__*) ;

void uiColorButtonSetColor(uiColorButton *b, double r, double g, double bl, double a)
{
 GdkRGBA rgba;

 rgba.red = r;
 rgba.green = g;
 rgba.blue = bl;
 rgba.alpha = a;

 gtk_color_chooser_set_rgba(b->cc, &rgba);
}
