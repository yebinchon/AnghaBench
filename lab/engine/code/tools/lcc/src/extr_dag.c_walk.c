
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int Tree ;
struct TYPE_8__ {int wants_dag; } ;
struct TYPE_5__ {int * forest; } ;
struct TYPE_7__ {TYPE_1__ u; } ;
struct TYPE_6__ {int * link; } ;
typedef int * Node ;


 int Gen ;
 TYPE_4__* IR ;
 int STMT ;
 TYPE_3__* code (int ) ;
 int deallocate (int ) ;
 TYPE_2__* forest ;
 int listnodes (int ,int,int) ;
 int reset () ;
 int * undag (int *) ;

void walk(Tree tp, int tlab, int flab) {
 listnodes(tp, tlab, flab);
 if (forest) {
  Node list = forest->link;
  forest->link = ((void*)0);
  if (!IR->wants_dag)
   list = undag(list);
  code(Gen)->u.forest = list;
  forest = ((void*)0);
 }
 reset();
 deallocate(STMT);
}
