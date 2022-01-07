
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ node_t ;


 TYPE_1__* p_firstnode ;
 TYPE_1__* p_lastnode ;

void P_AddNodeToList(node_t *node)
{
 node->next = ((void*)0);
 if (p_lastnode) p_lastnode->next = node;
 else p_firstnode = node;
 p_lastnode = node;
}
