
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ brush_t ;


 int FreeBrush (TYPE_1__*) ;

void FreeBrushList( brush_t *brushes ){
 brush_t *next;



 for ( ; brushes != ((void*)0); brushes = next )
 {
  next = brushes->next;
  FreeBrush( brushes );
 }
}
