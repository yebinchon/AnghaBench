
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* str; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef TYPE_2__ uiTableValue ;


 TYPE_2__* newTableValue (int ) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 int uiTableValueTypeString ;
 scalar_t__ uiprivAlloc (int,char*) ;

uiTableValue *uiNewTableValueString(const char *str)
{
 uiTableValue *v;

 v = newTableValue(uiTableValueTypeString);
 v->u.str = (char *) uiprivAlloc((strlen(str) + 1) * sizeof (char), "char[] (uiTableValue)");
 strcpy(v->u.str, str);
 return v;
}
