
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int current_stream; } ;
typedef TYPE_1__ git_subtransport ;
typedef int git_smart_subtransport ;


 int assert (int) ;
 int git__free (TYPE_1__*) ;

__attribute__((used)) static void _git_free(git_smart_subtransport *subtransport)
{
 git_subtransport *t = (git_subtransport *) subtransport;

 assert(!t->current_stream);

 git__free(t);
}
