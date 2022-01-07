
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int referenced; struct TYPE_5__* bound_by; } ;
typedef TYPE_1__ inst ;
typedef int block ;


 int BLOCK (int ,int ) ;
 int block_mark_referenced (int ) ;
 TYPE_1__* block_take (int *) ;
 int gen_noop () ;
 int inst_block (TYPE_1__*) ;
 int inst_free (TYPE_1__*) ;

block block_drop_unreferenced(block body) {
  block_mark_referenced(body);

  block refd = gen_noop();
  inst* curr;
  while ((curr = block_take(&body))) {
    if (curr->bound_by == curr && !curr->referenced) {
      inst_free(curr);
    } else {
      refd = BLOCK(refd, inst_block(curr));
    }
  }
  return refd;
}
