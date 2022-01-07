
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tree; } ;
typedef TYPE_1__ UniqueIndices ;


 size_t binarytree_size (int *) ;

size_t UniqueIndices_size(UniqueIndices* self) {
 return binarytree_size(&self->tree);
}
