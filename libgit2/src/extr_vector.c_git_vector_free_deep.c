
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t length; int ** contents; } ;
typedef TYPE_1__ git_vector ;


 int assert (TYPE_1__*) ;
 int git__free (int *) ;
 int git_vector_free (TYPE_1__*) ;

void git_vector_free_deep(git_vector *v)
{
 size_t i;

 assert(v);

 for (i = 0; i < v->length; ++i) {
  git__free(v->contents[i]);
  v->contents[i] = ((void*)0);
 }

 git_vector_free(v);
}
