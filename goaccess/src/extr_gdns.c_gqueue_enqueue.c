
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tail; int capacity; int size; int * buffer; } ;
typedef TYPE_1__ GDnsQueue ;


 scalar_t__ gqueue_full (TYPE_1__*) ;
 int strcpy (int ,char*) ;

int
gqueue_enqueue (GDnsQueue * q, char *item)
{
  if (gqueue_full (q))
    return -1;

  q->tail = (q->tail + 1) % q->capacity;
  strcpy (q->buffer[q->tail], item);
  q->size++;
  return 0;
}
