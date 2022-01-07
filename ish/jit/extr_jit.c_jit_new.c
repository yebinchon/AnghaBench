
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem {int dummy; } ;
struct jit {int lock; int jetsam; struct mem* mem; } ;


 int JIT_INITIAL_HASH_SIZE ;
 struct jit* calloc (int,int) ;
 int jit_resize_hash (struct jit*,int ) ;
 int list_init (int *) ;
 int lock_init (int *) ;

struct jit *jit_new(struct mem *mem) {
    struct jit *jit = calloc(1, sizeof(struct jit));
    jit->mem = mem;
    jit_resize_hash(jit, JIT_INITIAL_HASH_SIZE);
    list_init(&jit->jetsam);
    lock_init(&jit->lock);
    return jit;
}
