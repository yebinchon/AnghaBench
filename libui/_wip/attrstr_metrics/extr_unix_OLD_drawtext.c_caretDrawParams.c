
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int style; } ;
typedef TYPE_1__ uiDrawContext ;
struct caretDrawParams {double r; double g; double b; double a; int xoff; int width; } ;
typedef int gint ;
typedef double gfloat ;
struct TYPE_10__ {scalar_t__ blue; scalar_t__ green; scalar_t__ red; } ;
struct TYPE_9__ {double red; double green; double blue; double alpha; } ;
typedef TYPE_2__ GdkRGBA ;
typedef TYPE_3__ GdkColor ;


 int GTK_STATE_FLAG_NORMAL ;
 int gdk_color_free (TYPE_3__*) ;
 int gtk_style_context_get_color (int ,int ,TYPE_2__*) ;
 int gtk_style_context_get_style (int ,char*,TYPE_3__**,char*,double*,int *) ;

void caretDrawParams(uiDrawContext *c, double height, struct caretDrawParams *p)
{
 GdkColor *color;
 GdkRGBA rgba;
 gfloat aspectRatio;
 gint width, xoff;

 gtk_style_context_get_style(c->style,
  "cursor-color", &color,
  "cursor-aspect-ratio", &aspectRatio,
  ((void*)0));
 if (color != ((void*)0)) {
  p->r = ((double) (color->red)) / 65535.0;
  p->g = ((double) (color->green)) / 65535.0;
  p->b = ((double) (color->blue)) / 65535.0;
  p->a = 1.0;
  gdk_color_free(color);
 } else {
  gtk_style_context_get_color(c->style, GTK_STATE_FLAG_NORMAL, &rgba);
  p->r = rgba.red;
  p->g = rgba.green;
  p->b = rgba.blue;
  p->a = rgba.alpha;
 }


 width = height * aspectRatio + 1;

 xoff = width / 2;

 p->xoff = xoff;
 p->width = width;
}
