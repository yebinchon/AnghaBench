
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ type; scalar_t__ sclass; } ;
struct entry {TYPE_2__ sym; struct entry* link; } ;
typedef scalar_t__ Type ;
typedef TYPE_1__* Table ;
struct TYPE_6__ {struct entry** buckets; struct TYPE_6__* previous; } ;
typedef TYPE_2__* Symbol ;


 int HASHSIZE ;
 scalar_t__ TYPEDEF ;
 int assert (TYPE_1__*) ;
 TYPE_1__* identifiers ;

Symbol findtype(Type ty) {
 Table tp = identifiers;
 int i;
 struct entry *p;

 assert(tp);
 do
  for (i = 0; i < HASHSIZE; i++)
   for (p = tp->buckets[i]; p; p = p->link)
    if (p->sym.type == ty && p->sym.sclass == TYPEDEF)
     return &p->sym;
 while ((tp = tp->previous) != ((void*)0));
 return ((void*)0);
}
