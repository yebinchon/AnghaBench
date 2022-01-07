
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unpacked {scalar_t__ depth; TYPE_1__* object; int * data; int * index; } ;
struct TYPE_2__ {scalar_t__ size; } ;


 int git__free (int *) ;
 int git_delta_index_free (int *) ;
 scalar_t__ git_delta_index_size (int *) ;

__attribute__((used)) static size_t free_unpacked(struct unpacked *n)
{
 size_t freed_mem = 0;

 if (n->index) {
  freed_mem += git_delta_index_size(n->index);
  git_delta_index_free(n->index);
 }
 n->index = ((void*)0);

 if (n->data) {
  freed_mem += n->object->size;
  git__free(n->data);
  n->data = ((void*)0);
 }
 n->object = ((void*)0);
 n->depth = 0;
 return freed_mem;
}
