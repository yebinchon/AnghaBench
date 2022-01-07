
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; TYPE_1__* prev; } ;
typedef TYPE_2__ th_triangle_t ;
struct TYPE_5__ {TYPE_2__* next; } ;



void TH_RemoveTriangleFromList(th_triangle_t **trianglelist, th_triangle_t *tri)
{
 if (tri->next) tri->next->prev = tri->prev;
 if (tri->prev) tri->prev->next = tri->next;
 else *trianglelist = tri->next;
}
