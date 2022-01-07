
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int (* local ) (TYPE_1__*) ;} ;
struct TYPE_6__ {int defined; } ;
typedef TYPE_1__* Symbol ;


 TYPE_5__* IR ;
 int btot (int,int) ;
 int stub1 (TYPE_1__*) ;
 TYPE_1__* temporary (int,int ) ;

Symbol newtemp(int sclass, int tc, int size) {
 Symbol p = temporary(sclass, btot(tc, size));

 (*IR->local)(p);
 p->defined = 1;
 return p;
}
