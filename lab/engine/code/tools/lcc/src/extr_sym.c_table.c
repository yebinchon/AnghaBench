
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* Table ;
struct TYPE_5__ {int level; int all; struct TYPE_5__* previous; } ;


 int FUNC ;
 int NEW0 (TYPE_1__*,int ) ;

Table table(Table tp, int level) {
 Table new;

 NEW0(new, FUNC);
 new->previous = tp;
 new->level = level;
 if (tp)
  new->all = tp->all;
 return new;
}
