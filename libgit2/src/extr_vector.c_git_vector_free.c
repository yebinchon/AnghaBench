
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ _alloc_size; scalar_t__ length; int * contents; } ;
typedef TYPE_1__ git_vector ;


 int assert (TYPE_1__*) ;
 int git__free (int *) ;

void git_vector_free(git_vector *v)
{
 assert(v);

 git__free(v->contents);
 v->contents = ((void*)0);

 v->length = 0;
 v->_alloc_size = 0;
}
