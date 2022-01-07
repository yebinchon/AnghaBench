
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* cdr; TYPE_1__* car; } ;
typedef TYPE_2__ node ;
typedef int mrb_bool ;
struct TYPE_4__ {int car; } ;


 int FALSE ;
 scalar_t__ NODE_SPLAT ;
 int TRUE ;
 scalar_t__ nint (int ) ;

__attribute__((used)) static mrb_bool
nosplat(node *t)
{
  while (t) {
    if (nint(t->car->car) == NODE_SPLAT) return FALSE;
    t = t->cdr;
  }
  return TRUE;
}
