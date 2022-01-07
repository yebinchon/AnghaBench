
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* right; TYPE_1__* left; scalar_t__ delta; } ;
typedef TYPE_3__ tree_ext_small_t ;
struct TYPE_7__ {scalar_t__ delta; } ;
struct TYPE_6__ {scalar_t__ delta; } ;


 size_t NODE_TYPE (TYPE_3__*) ;
 scalar_t__* rpos_to_delta ;

__attribute__((used)) static inline void tree_ext_relax (tree_ext_small_t *T) {
  T->delta = T->left->delta + T->right->delta + rpos_to_delta[NODE_TYPE(T)];
}
