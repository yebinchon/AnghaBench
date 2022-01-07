
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int Tree ;
struct TYPE_5__ {struct TYPE_5__** kids; } ;
typedef TYPE_1__* Node ;


 int NELEMS (TYPE_1__**) ;
 int nodeid (int ) ;
 int* printed (int) ;
 int printnode (TYPE_1__*,int,int) ;

__attribute__((used)) static void printdag1(Node p, int fd, int lev) {
 int id, i;

 if (p == 0 || *printed(id = nodeid((Tree)p)))
  return;
 *printed(id) = 1;
 for (i = 0; i < NELEMS(p->kids); i++)
  printdag1(p->kids[i], fd, lev + 1);
 printnode(p, fd, lev);
}
