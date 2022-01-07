
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* last; } ;
struct TYPE_4__ {scalar_t__ right; scalar_t__ left; } ;
typedef TYPE_2__ BinaryTree ;



void binarytree_extend(BinaryTree* self) {
 self->last->left = 0;
 self->last->right = 0;
 ++self->last;
}
