
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* regnode; } ;
struct TYPE_12__ {TYPE_2__ x; } ;
struct TYPE_10__ {int * vbl; int set; int mask; } ;
typedef TYPE_3__* Symbol ;
typedef int Node ;


 TYPE_3__* askreg (TYPE_3__*,unsigned int*) ;
 int assert (int) ;
 int spill (int ,int ,int ) ;
 TYPE_3__* spillee (TYPE_3__*,unsigned int*,int ) ;

__attribute__((used)) static Symbol getreg(Symbol s, unsigned mask[], Node p) {
 Symbol r = askreg(s, mask);
 if (r == ((void*)0)) {
  r = spillee(s, mask, p);
  assert(r && r->x.regnode);
  spill(r->x.regnode->mask, r->x.regnode->set, p);
  r = askreg(s, mask);
 }
 assert(r && r->x.regnode);
 r->x.regnode->vbl = ((void*)0);
 return r;
}
