
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int y; TYPE_2__* right; TYPE_1__* left; scalar_t__ delta; } ;
typedef TYPE_3__ tree_ext_t ;
struct TYPE_6__ {scalar_t__ delta; } ;
struct TYPE_5__ {scalar_t__ delta; } ;


 scalar_t__* y_to_delta ;

__attribute__((used)) static inline void tree_ext_relax (tree_ext_t *T) {
  T->delta = T->left->delta + T->right->delta + y_to_delta[T->y & 3];
}
