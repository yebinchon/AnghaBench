
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * message; } ;
struct TYPE_5__ {TYPE_1__ error_t; } ;
typedef TYPE_2__ git_global_st ;


 int git__free (int *) ;

__attribute__((used)) static void git__global_state_cleanup(git_global_st *st)
{
 if (!st)
  return;

 git__free(st->error_t.message);
 st->error_t.message = ((void*)0);
}
