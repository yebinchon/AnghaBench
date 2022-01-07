
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {double size; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef TYPE_2__ uiAttribute ;


 TYPE_2__* newAttribute (int ) ;
 int uiAttributeTypeSize ;

uiAttribute *uiNewSizeAttribute(double size)
{
 uiAttribute *a;

 a = newAttribute(uiAttributeTypeSize);
 a->u.size = size;
 return a;
}
