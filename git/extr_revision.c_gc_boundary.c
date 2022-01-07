
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_array {scalar_t__ nr; scalar_t__ alloc; } ;


 int entry_unshown ;
 int object_array_filter (struct object_array*,int ,int *) ;

__attribute__((used)) static void gc_boundary(struct object_array *array)
{
 if (array->nr == array->alloc)
  object_array_filter(array, entry_unshown, ((void*)0));
}
