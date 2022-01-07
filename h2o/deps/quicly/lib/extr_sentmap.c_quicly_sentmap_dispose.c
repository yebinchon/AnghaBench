
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct st_quicly_sent_block_t {struct st_quicly_sent_block_t* next; } ;
struct TYPE_3__ {struct st_quicly_sent_block_t* head; } ;
typedef TYPE_1__ quicly_sentmap_t ;


 int free (struct st_quicly_sent_block_t*) ;

void quicly_sentmap_dispose(quicly_sentmap_t *map)
{
    struct st_quicly_sent_block_t *block;

    while ((block = map->head) != ((void*)0)) {
        map->head = block->next;
        free(block);
    }
}
