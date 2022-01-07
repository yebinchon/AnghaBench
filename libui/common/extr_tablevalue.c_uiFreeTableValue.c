
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* str; } ;
struct TYPE_6__ {int type; TYPE_1__ u; } ;
typedef TYPE_2__ uiTableValue ;



 int uiprivFree (TYPE_2__*) ;

void uiFreeTableValue(uiTableValue *v)
{
 switch (v->type) {
 case 128:
  uiprivFree(v->u.str);
  break;
 }
 uiprivFree(v);
}
