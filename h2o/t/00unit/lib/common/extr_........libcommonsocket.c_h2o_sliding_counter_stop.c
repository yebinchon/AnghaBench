
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_6__ {int sum; size_t index; scalar_t__* slots; } ;
struct TYPE_5__ {scalar_t__ start_at; } ;
struct TYPE_7__ {int average; TYPE_2__ prev; TYPE_1__ cur; } ;
typedef TYPE_3__ h2o_sliding_counter_t ;


 int assert (int) ;

void h2o_sliding_counter_stop(h2o_sliding_counter_t *counter, uint64_t now)
{
    uint64_t elapsed;

    assert(counter->cur.start_at != 0);


    if (now <= counter->cur.start_at)
        elapsed = 0;
    else
        elapsed = now - counter->cur.start_at;
    counter->cur.start_at = 0;


    counter->prev.sum += elapsed;
    counter->prev.sum -= counter->prev.slots[counter->prev.index];
    counter->prev.slots[counter->prev.index] = elapsed;
    if (++counter->prev.index >= sizeof(counter->prev.slots) / sizeof(counter->prev.slots[0]))
        counter->prev.index = 0;


    counter->average = counter->prev.sum / (sizeof(counter->prev.slots) / sizeof(counter->prev.slots[0]));
}
