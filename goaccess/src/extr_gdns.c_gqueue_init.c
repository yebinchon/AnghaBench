
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tail; int capacity; scalar_t__ size; scalar_t__ head; } ;
typedef TYPE_1__ GDnsQueue ;



void
gqueue_init (GDnsQueue * q, int capacity)
{
  q->head = 0;
  q->tail = -1;
  q->size = 0;
  q->capacity = capacity;
}
