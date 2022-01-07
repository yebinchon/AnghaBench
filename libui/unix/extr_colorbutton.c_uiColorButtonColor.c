
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


 int gtk_color_chooser_get_rgba (int ,TYPE_2__*) ;

void uiColorButtonColor(uiColorButton *b, double *r, double *g, double *bl, double *a)
{
 GdkRGBA rgba;

 gtk_color_chooser_get_rgba(b->cc, &rgba);
 *r = rgba.red;
 *g = rgba.green;
 *bl = rgba.blue;
 *a = rgba.alpha;
}
