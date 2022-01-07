
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int skipped; } ;
typedef TYPE_1__ testingT ;


 int returnNow (TYPE_1__*) ;

void testingprivTDoSkipNow(testingT *t)
{
 t->skipped = 1;
 returnNow(t);
}
