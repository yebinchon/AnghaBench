
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* prev; TYPE_2__** kids; } ;
struct TYPE_10__ {TYPE_1__ x; } ;
typedef TYPE_2__* Node ;


 int NELEMS (TYPE_2__**) ;
 int debug (int ) ;
 int fprint (int ,char*,TYPE_2__*) ;
 int relink (TYPE_2__*,TYPE_2__*) ;
 int stderr ;

__attribute__((used)) static void linearize(Node p, Node next) {
 int i;

 for (i = 0; i < NELEMS(p->x.kids) && p->x.kids[i]; i++)
  linearize(p->x.kids[i], next);
 relink(next->x.prev, p);
 relink(p, next);
 debug(fprint(stderr, "(listing %x)\n", p));
}
