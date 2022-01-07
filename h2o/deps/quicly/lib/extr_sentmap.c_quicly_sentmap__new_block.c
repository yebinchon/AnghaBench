
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct st_quicly_sent_block_t {struct st_quicly_sent_block_t* next; scalar_t__ next_insert_at; scalar_t__ num_entries; } ;
struct TYPE_3__ {struct st_quicly_sent_block_t* tail; struct st_quicly_sent_block_t* head; } ;
typedef TYPE_1__ quicly_sentmap_t ;


 struct st_quicly_sent_block_t* malloc (int) ;

struct st_quicly_sent_block_t *quicly_sentmap__new_block(quicly_sentmap_t *map)
{
    struct st_quicly_sent_block_t *block;

    if ((block = malloc(sizeof(*block))) == ((void*)0))
        return ((void*)0);

    block->next = ((void*)0);
    block->num_entries = 0;
    block->next_insert_at = 0;
    if (map->tail != ((void*)0)) {
        map->tail->next = block;
        map->tail = block;
    } else {
        map->head = map->tail = block;
    }

    return block;
}
