
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int indices; int tree; } ;
typedef TYPE_1__ UniqueIndices ;


 int binarytree_reserve (int *,size_t) ;
 int indexarray_reserve (int *,size_t) ;

void UniqueIndices_reserve(UniqueIndices* self, size_t size) {
 binarytree_reserve(&self->tree, size);
 indexarray_reserve(&self->indices, size);
}
