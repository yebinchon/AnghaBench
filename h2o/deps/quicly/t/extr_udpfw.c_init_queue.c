
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int depth; int * elements; scalar_t__ tail; scalar_t__ head; } ;
struct queue_t {TYPE_1__ ring; } ;


 int assert (int) ;
 int * malloc (int) ;

__attribute__((used)) static void init_queue(struct queue_t *q)
{
    assert(q->ring.depth != 0);
    q->ring.head = 0;
    q->ring.tail = 0;
    q->ring.elements = malloc(sizeof(q->ring.elements[0]) * q->ring.depth);
    assert(q->ring.elements != ((void*)0));
}
