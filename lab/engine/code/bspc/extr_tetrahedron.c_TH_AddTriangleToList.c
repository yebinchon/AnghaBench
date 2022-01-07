
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* prev; struct TYPE_4__* next; } ;
typedef TYPE_1__ th_triangle_t ;



void TH_AddTriangleToList(th_triangle_t **trianglelist, th_triangle_t *tri)
{
 tri->prev = ((void*)0);
 tri->next = *trianglelist;
 if (*trianglelist) (*trianglelist)->prev = tri;
 *trianglelist = tri;
}
