
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * next; void* data; } ;
typedef TYPE_1__ GSLList ;


 TYPE_1__* xmalloc (int) ;

GSLList *
list_create (void *data)
{
  GSLList *node = xmalloc (sizeof (GSLList));
  node->data = data;
  node->next = ((void*)0);

  return node;
}
