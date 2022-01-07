
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* p; } ;
typedef TYPE_2__ quicly_sentmap_iter_t ;
struct TYPE_5__ {scalar_t__ acked; } ;


 int next_entry (TYPE_2__*) ;
 scalar_t__ quicly_sentmap__type_packet ;

void quicly_sentmap_skip(quicly_sentmap_iter_t *iter)
{
    do {
        next_entry(iter);
    } while (iter->p->acked != quicly_sentmap__type_packet);
}
