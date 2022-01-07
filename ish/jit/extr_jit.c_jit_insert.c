
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jit_block {size_t addr; size_t end_addr; int * page; int chain; scalar_t__ used; } ;
struct jit {int num_blocks; int hash_size; int mem; int * hash; int mem_used; } ;


 scalar_t__ PAGE (size_t) ;
 int * blocks_list (struct jit*,scalar_t__,int) ;
 int jit_resize_hash (struct jit*,int) ;
 int list_init_add (int *,int *) ;
 int * mem_pt (int ,scalar_t__) ;

__attribute__((used)) static void jit_insert(struct jit *jit, struct jit_block *block) {
    jit->mem_used += block->used;
    jit->num_blocks++;

    if (jit->num_blocks >= jit->hash_size * 2)
        jit_resize_hash(jit, jit->hash_size * 2);

    list_init_add(&jit->hash[block->addr % jit->hash_size], &block->chain);
    if (mem_pt(jit->mem, PAGE(block->addr)) == ((void*)0))
        return;
    list_init_add(blocks_list(jit, PAGE(block->addr), 0), &block->page[0]);
    if (PAGE(block->addr) != PAGE(block->end_addr))
        list_init_add(blocks_list(jit, PAGE(block->end_addr), 1), &block->page[1]);
}
