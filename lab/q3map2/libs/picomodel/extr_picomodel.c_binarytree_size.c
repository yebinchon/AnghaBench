
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t last; size_t data; } ;
typedef TYPE_1__ BinaryTree ;



size_t binarytree_size(BinaryTree* self) {
 return self->last - self->data;
}
