
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_oidmap ;
typedef int git_oid ;
struct TYPE_3__ {scalar_t__ next_pos; size_t first_entry; int arr; } ;
typedef TYPE_1__ deletes_by_oid_queue ;


 int GIT_ENOTFOUND ;
 size_t* git_array_get (int ,scalar_t__) ;
 TYPE_1__* git_oidmap_get (int *,int const*) ;

__attribute__((used)) static int deletes_by_oid_dequeue(size_t *idx, git_oidmap *map, const git_oid *id)
{
 deletes_by_oid_queue *queue;
 size_t *array_entry;

 if ((queue = git_oidmap_get(map, id)) == ((void*)0))
  return GIT_ENOTFOUND;

 if (queue->next_pos == 0) {
  *idx = queue->first_entry;
 } else {
  array_entry = git_array_get(queue->arr, queue->next_pos - 1);
  if (array_entry == ((void*)0))
   return GIT_ENOTFOUND;

  *idx = *array_entry;
 }

 queue->next_pos++;
 return 0;
}
