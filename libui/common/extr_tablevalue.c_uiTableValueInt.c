
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
typedef TYPE_2__ uiTableValue ;



int uiTableValueInt(const uiTableValue *v)
{
 return v->u.i;
}
