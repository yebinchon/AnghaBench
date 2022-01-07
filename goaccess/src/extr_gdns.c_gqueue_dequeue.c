
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char** buffer; size_t head; int capacity; int size; } ;
typedef TYPE_1__ GDnsQueue ;


 scalar_t__ gqueue_empty (TYPE_1__*) ;

char *
gqueue_dequeue (GDnsQueue * q)
{
  char *item;
  if (gqueue_empty (q))
    return ((void*)0);

  item = q->buffer[q->head];
  q->head = (q->head + 1) % q->capacity;
  q->size--;
  return item;
}
