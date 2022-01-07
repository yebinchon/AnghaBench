
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {TYPE_5__* next; } ;
struct TYPE_16__ {TYPE_1__ x; } ;
struct TYPE_15__ {unsigned int mask; size_t set; int * vbl; } ;
struct TYPE_13__ {TYPE_4__* regnode; scalar_t__ lastuse; TYPE_3__** wildcard; } ;
struct TYPE_14__ {TYPE_2__ x; } ;
typedef TYPE_3__* Symbol ;
typedef TYPE_4__* Regnode ;
typedef TYPE_5__* Node ;


 int assert (TYPE_3__*) ;
 unsigned int* tmask ;
 int uses (TYPE_5__*,TYPE_4__*) ;

__attribute__((used)) static Symbol spillee(Symbol set, unsigned mask[], Node here) {
 Symbol bestreg = ((void*)0);
 int bestdist = -1, i;

 assert(set);
 if (!set->x.wildcard)
  bestreg = set;
 else {
  for (i = 31; i >= 0; i--) {
   Symbol ri = set->x.wildcard[i];
   if (
    ri != ((void*)0) &&
    ri->x.lastuse &&
    (ri->x.regnode->mask&tmask[ri->x.regnode->set]&mask[ri->x.regnode->set])
   ) {
    Regnode rn = ri->x.regnode;
    Node q = here;
    int dist = 0;
    for (; q && !uses(q, rn); q = q->x.next)
     dist++;
    if (q && dist > bestdist) {
     bestdist = dist;
     bestreg = ri;
    }
   }
  }
 }
 assert(bestreg);


 assert(bestreg->x.regnode->vbl == ((void*)0));


 return bestreg;
}
