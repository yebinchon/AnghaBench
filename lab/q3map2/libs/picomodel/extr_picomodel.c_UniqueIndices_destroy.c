
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int indices; int tree; } ;
typedef TYPE_1__ UniqueIndices ;


 int binarytree_clear (int *) ;
 int indexarray_clear (int *) ;

void UniqueIndices_destroy(UniqueIndices* self) {
 binarytree_clear(&self->tree);
 indexarray_clear(&self->indices);
}
