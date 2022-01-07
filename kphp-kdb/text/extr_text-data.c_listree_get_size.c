
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int N; TYPE_1__* root; } ;
typedef TYPE_2__ listree_t ;
struct TYPE_4__ {int delta; } ;



inline int listree_get_size (listree_t *U) {
  return U->N + U->root->delta;
}
