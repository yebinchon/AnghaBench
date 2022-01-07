
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ length; } ;
typedef TYPE_1__ git_vector ;


 int assert (TYPE_1__*) ;
 int git_vector_set_sorted (TYPE_1__*,int) ;

void git_vector_clear(git_vector *v)
{
 assert(v);
 v->length = 0;
 git_vector_set_sorted(v, 1);
}
