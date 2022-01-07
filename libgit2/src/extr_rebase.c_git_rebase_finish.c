
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_signature ;
struct TYPE_7__ {int head_detached; scalar_t__ inmemory; } ;
typedef TYPE_1__ git_rebase ;


 int assert (TYPE_1__*) ;
 int rebase_cleanup (TYPE_1__*) ;
 int rebase_copy_notes (TYPE_1__*,int const*) ;
 int return_to_orig_head (TYPE_1__*) ;

int git_rebase_finish(
 git_rebase *rebase,
 const git_signature *signature)
{
 int error = 0;

 assert(rebase);

 if (rebase->inmemory)
  return 0;

 if (!rebase->head_detached)
  error = return_to_orig_head(rebase);

 if (error == 0 && (error = rebase_copy_notes(rebase, signature)) == 0)
  error = rebase_cleanup(rebase);

 return error;
}
