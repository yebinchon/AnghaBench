
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int refspec; } ;
typedef TYPE_1__ push_spec ;


 int git__free (TYPE_1__*) ;
 int git_refspec__dispose (int *) ;

__attribute__((used)) static void free_refspec(push_spec *spec)
{
 if (spec == ((void*)0))
  return;

 git_refspec__dispose(&spec->refspec);
 git__free(spec);
}
