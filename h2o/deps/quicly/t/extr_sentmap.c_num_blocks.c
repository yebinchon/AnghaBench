
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct st_quicly_sent_block_t {struct st_quicly_sent_block_t* next; } ;
struct TYPE_3__ {struct st_quicly_sent_block_t* head; } ;
typedef TYPE_1__ quicly_sentmap_t ;



__attribute__((used)) static size_t num_blocks(quicly_sentmap_t *map)
{
    struct st_quicly_sent_block_t *block;
    size_t n = 0;

    for (block = map->head; block != ((void*)0); block = block->next)
        ++n;

    return n;
}
