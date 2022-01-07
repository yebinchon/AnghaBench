
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiDrawTextLayout ;
typedef scalar_t__ guint16 ;
typedef int PangoAttribute ;


 int * FUTURE_pango_attr_foreground_alpha_new (scalar_t__) ;
 int addAttr (int *,int *,int,int) ;
 int * pango_attr_foreground_new (scalar_t__,scalar_t__,scalar_t__) ;

void uiDrawTextLayoutSetColor(uiDrawTextLayout *layout, int startChar, int endChar, double r, double g, double b, double a)
{
 PangoAttribute *attr;
 guint16 rr, gg, bb, aa;

 rr = (guint16) (r * 65535);
 gg = (guint16) (g * 65535);
 bb = (guint16) (b * 65535);
 aa = (guint16) (a * 65535);

 attr = pango_attr_foreground_new(rr, gg, bb);
 addAttr(layout, attr, startChar, endChar);


 attr = FUTURE_pango_attr_foreground_alpha_new(aa);
 if (attr != ((void*)0))
  addAttr(layout, attr, startChar, endChar);
}
