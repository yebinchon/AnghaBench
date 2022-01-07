
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int emitted; int inst; scalar_t__ equatable; int registered; TYPE_2__* next; } ;
struct TYPE_9__ {TYPE_1__ x; } ;
typedef TYPE_2__* Node ;


 int assert (int ) ;
 int emitter (TYPE_2__*,int ) ;
 scalar_t__ moveself (TYPE_2__*) ;
 scalar_t__ requate (TYPE_2__*) ;
 int stub1 (TYPE_2__*,int ) ;

void emit(Node p) {
 for (; p; p = p->x.next) {
  assert(p->x.registered);
  if ((p->x.equatable && requate(p)) || moveself(p))
   ;
  else
   (*emitter)(p, p->x.inst);
  p->x.emitted = 1;
 }
}
