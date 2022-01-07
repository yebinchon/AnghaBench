
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PangoFontDescription ;
typedef int PangoFont ;
typedef int PangoContext ;


 int g_error (char*) ;
 int g_object_unref (int *) ;
 int * mkGenericPangoCairoContext () ;
 int pango_cairo_font_map_get_default () ;
 int * pango_font_map_load_font (int ,int *,int *) ;

PangoFont *pangoDescToPangoFont(PangoFontDescription *pdesc)
{
 PangoFont *f;
 PangoContext *context;


 context = mkGenericPangoCairoContext();
 f = pango_font_map_load_font(pango_cairo_font_map_get_default(), context, pdesc);
 if (f == ((void*)0)) {

  g_error("[libui] no match in pangoDescToPangoFont(); report to andlabs");
 }
 g_object_unref(context);
 return f;
}
