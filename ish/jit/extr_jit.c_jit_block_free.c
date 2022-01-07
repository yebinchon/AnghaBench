
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jit_block {int dummy; } ;
struct jit {int dummy; } ;


 int free (struct jit_block*) ;
 int jit_block_disconnect (struct jit*,struct jit_block*) ;

__attribute__((used)) static void jit_block_free(struct jit *jit, struct jit_block *block) {
    jit_block_disconnect(jit, block);
    free(block);
}
