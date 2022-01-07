
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int picoIndex_t ;
struct TYPE_6__ {scalar_t__ data; scalar_t__ last; } ;
struct TYPE_5__ {int indices; TYPE_2__ tree; } ;
typedef TYPE_1__ UniqueIndices ;


 int UniqueIndices_find_or_insert (TYPE_1__*,int ) ;
 int binarytree_extend (TYPE_2__*) ;
 int indexarray_push_back (int *,int ) ;

picoIndex_t UniqueIndices_insert(UniqueIndices* self, picoIndex_t value) {
 if (self->tree.data == self->tree.last) {
  binarytree_extend(&self->tree);
  indexarray_push_back(&self->indices, value);
  return 0;
 }
 else
 {
  return UniqueIndices_find_or_insert(self, value);
 }
}
