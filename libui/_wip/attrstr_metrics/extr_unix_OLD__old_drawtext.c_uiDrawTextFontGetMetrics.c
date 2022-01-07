
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* UnderlineThickness; void* UnderlinePos; scalar_t__ Leading; void* Descent; void* Ascent; } ;
typedef TYPE_1__ uiDrawTextFontMetrics ;
struct TYPE_6__ {int f; } ;
typedef TYPE_2__ uiDrawTextFont ;
typedef int PangoFontMetrics ;


 void* pangoToCairo (int ) ;
 int * pango_font_get_metrics (int ,int *) ;
 int pango_font_metrics_get_ascent (int *) ;
 int pango_font_metrics_get_descent (int *) ;
 int pango_font_metrics_get_underline_position (int *) ;
 int pango_font_metrics_get_underline_thickness (int *) ;
 int pango_font_metrics_unref (int *) ;

void uiDrawTextFontGetMetrics(uiDrawTextFont *font, uiDrawTextFontMetrics *metrics)
{
 PangoFontMetrics *pm;

 pm = pango_font_get_metrics(font->f, ((void*)0));
 metrics->Ascent = pangoToCairo(pango_font_metrics_get_ascent(pm));
 metrics->Descent = pangoToCairo(pango_font_metrics_get_descent(pm));

 metrics->Leading = 0;
 metrics->UnderlinePos = pangoToCairo(pango_font_metrics_get_underline_position(pm));
 metrics->UnderlineThickness = pangoToCairo(pango_font_metrics_get_underline_thickness(pm));
 pango_font_metrics_unref(pm);
}
