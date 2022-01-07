
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* family; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef TYPE_2__ uiAttribute ;


 TYPE_2__* newAttribute (int ) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 int uiAttributeTypeFamily ;
 scalar_t__ uiprivAlloc (int,char*) ;

uiAttribute *uiNewFamilyAttribute(const char *family)
{
 uiAttribute *a;

 a = newAttribute(uiAttributeTypeFamily);
 a->u.family = (char *) uiprivAlloc((strlen(family) + 1) * sizeof (char), "char[] (uiAttribute)");
 strcpy(a->u.family, family);
 return a;
}
