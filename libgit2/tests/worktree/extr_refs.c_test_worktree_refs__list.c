
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int count; int * strings; } ;
typedef TYPE_1__ git_strarray ;
struct TYPE_6__ {int worktree; int repo; } ;


 int GIT_ERROR ;
 int cl_git_pass (int) ;
 TYPE_4__ fixture ;
 int git_reference_list (TYPE_1__*,int ) ;
 int git_strarray_free (TYPE_1__*) ;
 int strcmp (int ,int ) ;

void test_worktree_refs__list(void)
{
 git_strarray refs, wtrefs;
 unsigned i, j;
 int error = 0;

 cl_git_pass(git_reference_list(&refs, fixture.repo));
 cl_git_pass(git_reference_list(&wtrefs, fixture.worktree));

 if (refs.count != wtrefs.count)
 {
  error = GIT_ERROR;
  goto exit;
 }

 for (i = 0; i < refs.count; i++)
 {
  int found = 0;

  for (j = 0; j < wtrefs.count; j++)
  {
   if (!strcmp(refs.strings[i], wtrefs.strings[j]))
   {
    found = 1;
    break;
   }
  }

  if (!found)
  {
   error = GIT_ERROR;
   goto exit;
  }
 }

exit:
 git_strarray_free(&refs);
 git_strarray_free(&wtrefs);
 cl_git_pass(error);
}
