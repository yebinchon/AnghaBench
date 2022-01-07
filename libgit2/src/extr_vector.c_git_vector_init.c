
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_vector_cmp ;
struct TYPE_5__ {int * contents; int flags; scalar_t__ length; int _cmp; scalar_t__ _alloc_size; } ;
typedef TYPE_1__ git_vector ;


 int GIT_VECTOR_SORTED ;
 int MIN_ALLOCSIZE ;
 int assert (TYPE_1__*) ;
 int max (size_t,int ) ;
 int resize_vector (TYPE_1__*,int ) ;

int git_vector_init(git_vector *v, size_t initial_size, git_vector_cmp cmp)
{
 assert(v);

 v->_alloc_size = 0;
 v->_cmp = cmp;
 v->length = 0;
 v->flags = GIT_VECTOR_SORTED;
 v->contents = ((void*)0);

 return resize_vector(v, max(initial_size, MIN_ALLOCSIZE));
}
