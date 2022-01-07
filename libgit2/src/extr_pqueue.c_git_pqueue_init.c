
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int git_vector_cmp ;
struct TYPE_4__ {int flags; size_t _alloc_size; } ;
typedef TYPE_1__ git_pqueue ;


 int GIT_PQUEUE_FIXED_SIZE ;
 int git_vector_init (TYPE_1__*,size_t,int ) ;

int git_pqueue_init(
 git_pqueue *pq,
 uint32_t flags,
 size_t init_size,
 git_vector_cmp cmp)
{
 int error = git_vector_init(pq, init_size, cmp);

 if (!error) {

  pq->flags |= flags;


  if ((flags & GIT_PQUEUE_FIXED_SIZE) && init_size > 0)
   pq->_alloc_size = init_size;
 }

 return error;
}
