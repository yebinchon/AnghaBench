
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* sym; } ;
struct TYPE_6__ {scalar_t__ op; TYPE_2__ u; } ;
struct entry {struct entry* link; TYPE_3__ type; } ;
struct TYPE_4__ {int scope; } ;


 scalar_t__ FUNCTION ;
 int NELEMS (struct entry**) ;
 int maxlevel ;
 struct entry** typetable ;

void rmtypes(int lev) {
 if (maxlevel >= lev) {
  int i;
  maxlevel = 0;
  for (i = 0; i < NELEMS(typetable); i++) {
   struct entry *tn, **tq = &typetable[i];
   while ((tn = *tq) != ((void*)0))
    if (tn->type.op == FUNCTION)
     tq = &tn->link;
    else if (tn->type.u.sym && tn->type.u.sym->scope >= lev)
     *tq = tn->link;
    else {
     if (tn->type.u.sym && tn->type.u.sym->scope > maxlevel)
      maxlevel = tn->type.u.sym->scope;
     tq = &tn->link;
    }

  }
 }
}
