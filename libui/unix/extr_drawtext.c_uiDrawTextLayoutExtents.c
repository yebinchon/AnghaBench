
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int layout; } ;
typedef TYPE_1__ uiDrawTextLayout ;
struct TYPE_6__ {int height; int width; } ;
typedef TYPE_2__ PangoRectangle ;


 double pangoToCairo (int ) ;
 int pango_layout_get_extents (int ,int *,TYPE_2__*) ;

void uiDrawTextLayoutExtents(uiDrawTextLayout *tl, double *width, double *height)
{
 PangoRectangle logical;

 pango_layout_get_extents(tl->layout, ((void*)0), &logical);
 *width = pangoToCairo(logical.width);
 *height = pangoToCairo(logical.height);
}
