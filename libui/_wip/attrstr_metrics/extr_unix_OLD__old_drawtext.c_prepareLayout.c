
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int attrs; int defaultFont; } ;
typedef TYPE_1__ uiDrawTextLayout ;
typedef int PangoLayout ;


 int desc ;
 int pango_font_describe (int ) ;
 int pango_layout_set_attributes (int *,int ) ;

__attribute__((used)) static void prepareLayout(uiDrawTextLayout *layout, PangoLayout *pl)
{

 desc = pango_font_describe(layout->defaultFont);

 pango_layout_set_attributes(pl, layout->attrs);
}
