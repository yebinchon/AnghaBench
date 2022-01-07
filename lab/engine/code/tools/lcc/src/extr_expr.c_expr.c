
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* Tree ;
struct TYPE_9__ {int type; } ;




 int RIGHT ;
 TYPE_1__* expr1 (int ) ;
 char gettok () ;
 TYPE_1__* pointer (TYPE_1__*) ;
 int root (int ) ;
 char t ;
 int test (int,char*) ;
 TYPE_1__* tree (int ,int ,int ,TYPE_1__*) ;
 int value (TYPE_1__*) ;

Tree expr(int tok) {
 static char stop[] = { 128, 129, '}', 0 };
 Tree p = expr1(0);

 while (t == ',') {
  Tree q;
  t = gettok();
  q = pointer(expr1(0));
  p = tree(RIGHT, q->type, root(value(p)), q);
 }
 if (tok)
  test(tok, stop);
 return p;
}
