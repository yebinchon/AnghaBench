
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct st_quicly_sent_block_t {scalar_t__ num_entries; TYPE_1__* entries; } ;
typedef int quicly_sentmap_t ;
struct TYPE_5__ {scalar_t__ count; TYPE_1__* p; struct st_quicly_sent_block_t** ref; } ;
typedef TYPE_2__ quicly_sentmap_iter_t ;
struct TYPE_4__ {int * acked; } ;


 int assert (int ) ;
 struct st_quicly_sent_block_t** free_block (int *,struct st_quicly_sent_block_t**) ;

__attribute__((used)) static void discard_entry(quicly_sentmap_t *map, quicly_sentmap_iter_t *iter)
{
    assert(iter->p->acked != ((void*)0));
    iter->p->acked = ((void*)0);

    struct st_quicly_sent_block_t *block = *iter->ref;
    if (--block->num_entries == 0) {
        iter->ref = free_block(map, iter->ref);
        block = *iter->ref;
        iter->p = block->entries - 1;
        iter->count = block->num_entries + 1;
    }
}
