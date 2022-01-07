
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int String; } ;
typedef TYPE_1__ uiDrawTextLayoutParams ;
struct foreachParams {int * attrs; } ;
typedef int PangoAttrList ;


 int * pango_attr_list_new () ;
 int processAttribute ;
 int uiAttributedStringForEachAttribute (int ,int ,struct foreachParams*) ;

PangoAttrList *uiprivAttributedStringToPangoAttrList(uiDrawTextLayoutParams *p)
{
 struct foreachParams fep;

 fep.attrs = pango_attr_list_new();
 uiAttributedStringForEachAttribute(p->String, processAttribute, &fep);
 return fep.attrs;
}
