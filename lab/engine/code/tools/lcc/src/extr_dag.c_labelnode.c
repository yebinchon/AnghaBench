
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ op; int * syms; } ;


 scalar_t__ LABEL ;
 scalar_t__ V ;
 int assert (int) ;
 int equatelab (int ,int ) ;
 int findlabel (int) ;
 TYPE_1__* forest ;
 int list (int ) ;
 int newnode (scalar_t__,int *,int *,int ) ;
 int reset () ;

__attribute__((used)) static void labelnode(int lab) {
 assert(lab);
 if (forest && forest->op == LABEL+V)
  equatelab(findlabel(lab), forest->syms[0]);
 else
  list(newnode(LABEL+V, ((void*)0), ((void*)0), findlabel(lab)));
 reset();
}
