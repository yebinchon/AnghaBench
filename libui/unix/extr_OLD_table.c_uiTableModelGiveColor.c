
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double red; double green; double blue; double alpha; } ;
typedef TYPE_1__ GdkRGBA ;


 void* gdk_rgba_copy (TYPE_1__*) ;

void *uiTableModelGiveColor(double r, double g, double b, double a)
{
 GdkRGBA rgba;

 rgba.red = r;
 rgba.green = g;
 rgba.blue = b;
 rgba.alpha = a;
 return gdk_rgba_copy(&rgba);
}
