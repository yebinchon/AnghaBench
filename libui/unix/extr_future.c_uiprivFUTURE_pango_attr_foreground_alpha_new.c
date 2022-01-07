
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int guint16 ;
typedef int PangoAttribute ;


 int * newFGAlphaAttr (int ) ;
 int * stub1 (int ) ;

PangoAttribute *uiprivFUTURE_pango_attr_foreground_alpha_new(guint16 alpha)
{
 if (newFGAlphaAttr == ((void*)0))
  return ((void*)0);
 return (*newFGAlphaAttr)(alpha);
}
