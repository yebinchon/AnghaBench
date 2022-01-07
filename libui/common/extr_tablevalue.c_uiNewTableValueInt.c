
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int i; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef TYPE_2__ uiTableValue ;


 TYPE_2__* newTableValue (int ) ;
 int uiTableValueTypeInt ;

uiTableValue *uiNewTableValueInt(int i)
{
 uiTableValue *v;

 v = newTableValue(uiTableValueTypeInt);
 v->u.i = i;
 return v;
}
