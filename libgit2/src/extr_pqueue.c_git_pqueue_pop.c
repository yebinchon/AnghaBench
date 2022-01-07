
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {void** contents; scalar_t__ _cmp; } ;
typedef TYPE_1__ git_pqueue ;


 void* git_pqueue_get (TYPE_1__*,int ) ;
 int git_pqueue_size (TYPE_1__*) ;
 void* git_vector_last (TYPE_1__*) ;
 int git_vector_pop (TYPE_1__*) ;
 int pqueue_down (TYPE_1__*,int ) ;

void *git_pqueue_pop(git_pqueue *pq)
{
 void *rval;

 if (!pq->_cmp) {
  rval = git_vector_last(pq);
 } else {
  rval = git_pqueue_get(pq, 0);
 }

 if (git_pqueue_size(pq) > 1 && pq->_cmp) {

  pq->contents[0] = git_vector_last(pq);
  git_vector_pop(pq);
  pqueue_down(pq, 0);
 } else {

  git_vector_pop(pq);
 }

 return rval;
}
