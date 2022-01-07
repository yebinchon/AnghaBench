
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ node_t ;


 int ThreadLock () ;
 int ThreadSemaphoreIncrease (int) ;
 int ThreadUnlock () ;
 TYPE_1__* firstnode ;
 TYPE_1__* lastnode ;
 int nodelistsize ;

void AddNodeToQueue(node_t *node)
{
 ThreadLock();

 node->next = ((void*)0);
 if (lastnode) lastnode->next = node;
 else firstnode = node;
 lastnode = node;
 nodelistsize++;

 ThreadUnlock();

 ThreadSemaphoreIncrease(1);
}
