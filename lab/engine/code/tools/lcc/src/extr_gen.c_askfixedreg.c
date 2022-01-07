
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int set; int mask; } ;
struct TYPE_6__ {TYPE_3__* regnode; } ;
struct TYPE_7__ {TYPE_1__ x; } ;
typedef TYPE_2__* Symbol ;
typedef TYPE_3__* Regnode ;


 int* freemask ;
 int* usedmask ;

__attribute__((used)) static Symbol askfixedreg(Symbol s) {
 Regnode r = s->x.regnode;
 int n = r->set;

 if (r->mask&~freemask[n])
  return ((void*)0);
 else {
  freemask[n] &= ~r->mask;
  usedmask[n] |= r->mask;
  return s;
 }
}
