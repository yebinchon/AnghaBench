
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int defersRun; struct defer* defers; } ;
typedef TYPE_1__ testingT ;
struct defer {int data; int (* f ) (int ) ;struct defer* next; } ;


 int stub1 (int ) ;

__attribute__((used)) static void runDefers(testingT *t)
{
 struct defer *d;

 if (t->defersRun)
  return;
 t->defersRun = 1;
 for (d = t->defers; d != ((void*)0); d = d->next)
  (*(d->f))(d->data);
}
