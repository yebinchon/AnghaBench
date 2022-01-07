
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; } ;
typedef TYPE_1__ brush_t ;



int CountBrushList( brush_t *brushes ){
 int c = 0;



 for ( ; brushes != ((void*)0); brushes = brushes->next )
  c++;
 return c;
}
