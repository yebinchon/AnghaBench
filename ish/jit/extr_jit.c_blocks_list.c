
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list {int dummy; } ;
struct jit {int mem; } ;
typedef int page_t ;
struct TYPE_2__ {struct list* blocks; } ;


 TYPE_1__* mem_pt (int ,int ) ;

__attribute__((used)) static inline struct list *blocks_list(struct jit *jit, page_t page, int i) {
    return &mem_pt(jit->mem, page)->blocks[i];
}
