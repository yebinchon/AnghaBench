
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int push_spec ;
struct TYPE_4__ {int specs; } ;
typedef TYPE_1__ git_push ;


 scalar_t__ git_vector_insert (int *,int *) ;
 scalar_t__ parse_refspec (TYPE_1__*,int **,char const*) ;

int git_push_add_refspec(git_push *push, const char *refspec)
{
 push_spec *spec;

 if (parse_refspec(push, &spec, refspec) < 0 ||
     git_vector_insert(&push->specs, spec) < 0)
  return -1;

 return 0;
}
