
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; struct TYPE_4__* prev; } ;
typedef TYPE_1__ levelitem_t ;


 TYPE_1__* levelitems ;

void AddLevelItemToList(levelitem_t *li)
{
 if (levelitems) levelitems->prev = li;
 li->prev = ((void*)0);
 li->next = levelitems;
 levelitems = li;
}
