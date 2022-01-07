
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int entries; } ;
typedef TYPE_1__ git_mailmap ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 TYPE_1__* git__calloc (int,int) ;
 int git__free (TYPE_1__*) ;
 int git_vector_init (int *,int ,int ) ;
 int mailmap_entry_cmp ;

int git_mailmap_new(git_mailmap **out)
{
 int error;
 git_mailmap *mm = git__calloc(1, sizeof(git_mailmap));
 GIT_ERROR_CHECK_ALLOC(mm);

 error = git_vector_init(&mm->entries, 0, mailmap_entry_cmp);
 if (error < 0) {
  git__free(mm);
  return error;
 }
 *out = mm;
 return 0;
}
