
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_entry {int dummy; } ;
struct mem {int lock; int jit; scalar_t__ changes; scalar_t__ pgdir_used; int pgdir; } ;


 int MEM_PGDIR_SIZE ;
 int calloc (int ,int) ;
 int jit_new (struct mem*) ;
 int wrlock_init (int *) ;

void mem_init(struct mem *mem) {
    mem->pgdir = calloc(MEM_PGDIR_SIZE, sizeof(struct pt_entry *));
    mem->pgdir_used = 0;
    mem->changes = 0;



    wrlock_init(&mem->lock);
}
