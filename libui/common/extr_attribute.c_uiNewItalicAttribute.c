
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uiTextItalic ;
struct TYPE_5__ {int italic; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef TYPE_2__ uiAttribute ;


 TYPE_2__* newAttribute (int ) ;
 int uiAttributeTypeItalic ;

uiAttribute *uiNewItalicAttribute(uiTextItalic italic)
{
 uiAttribute *a;

 a = newAttribute(uiAttributeTypeItalic);
 a->u.italic = italic;
 return a;
}
