
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; } ;
typedef TYPE_1__ bspbrush_t ;



int CountBrushList (bspbrush_t *brushes)
{
 int c;

 c = 0;
 for ( ; brushes; brushes = brushes->next) c++;
 return c;
}
