
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flags; scalar_t__ length; scalar_t__ _alloc_size; scalar_t__ (* _cmp ) (void*,int ) ;} ;
typedef TYPE_1__ git_pqueue ;


 int GIT_PQUEUE_FIXED_SIZE ;
 int git_pqueue_pop (TYPE_1__*) ;
 int git_vector_get (TYPE_1__*,int ) ;
 int git_vector_insert (TYPE_1__*,void*) ;
 int pqueue_up (TYPE_1__*,scalar_t__) ;
 scalar_t__ stub1 (void*,int ) ;

int git_pqueue_insert(git_pqueue *pq, void *item)
{
 int error = 0;


 if ((pq->flags & GIT_PQUEUE_FIXED_SIZE) != 0 &&
  pq->length >= pq->_alloc_size)
 {


  if (!pq->_cmp || pq->_cmp(item, git_vector_get(pq, 0)) <= 0)
   return 0;

  (void)git_pqueue_pop(pq);
 }

 if (!(error = git_vector_insert(pq, item)) && pq->_cmp)
  pqueue_up(pq, pq->length - 1);

 return error;
}
