
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int extra_words; int depth; int root; } ;
typedef TYPE_1__ tree23_root_t ;


 int dump_rec (int ,int ,int ) ;

__attribute__((used)) static void dump (tree23_root_t *R) {
  dump_rec (R->root, R->depth, R->extra_words);
}
