
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int name; TYPE_1__* regnode; } ;
struct TYPE_7__ {TYPE_2__ x; } ;
struct TYPE_5__ {size_t set; int mask; } ;
typedef TYPE_3__* Symbol ;


 int assert (int) ;
 int debug (int ) ;
 int dumpregs (char*,int ,int *) ;
 int * freemask ;

__attribute__((used)) static void putreg(Symbol r) {
 assert(r && r->x.regnode);
 freemask[r->x.regnode->set] |= r->x.regnode->mask;
 debug(dumpregs("(freeing %s)\n", r->x.name, ((void*)0)));
}
