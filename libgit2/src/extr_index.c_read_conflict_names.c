
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {struct TYPE_12__* theirs; struct TYPE_12__* ours; struct TYPE_12__* ancestor; } ;
typedef TYPE_1__ git_index_name_entry ;
struct TYPE_14__ {scalar_t__ _alloc_size; } ;
struct TYPE_13__ {TYPE_5__ names; } ;
typedef TYPE_2__ git_index ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 int conflict_name_cmp ;
 TYPE_1__* git__calloc (int,int) ;
 int git__free (TYPE_1__*) ;
 scalar_t__ git_vector_init (TYPE_5__*,int,int ) ;
 scalar_t__ git_vector_insert (TYPE_5__*,TYPE_1__*) ;
 int git_vector_set_sorted (TYPE_5__*,int) ;
 int read_conflict_name (TYPE_1__*) ;

__attribute__((used)) static int read_conflict_names(git_index *index, const char *buffer, size_t size)
{
 size_t len;


 if (index->names._alloc_size == 0 &&
  git_vector_init(&index->names, 16, conflict_name_cmp) < 0)
  return -1;
 while (size) {
  git_index_name_entry *conflict_name = git__calloc(1, sizeof(git_index_name_entry));
  GIT_ERROR_CHECK_ALLOC(conflict_name);

  len = p_strnlen(buffer, size) + 1; if (size < len) { index_error_invalid("reading conflict name entries"); goto out_err; } if (len == 1) conflict_name->ancestor = ((void*)0); else { conflict_name->ancestor = git__malloc(len); GIT_ERROR_CHECK_ALLOC(conflict_name->ancestor); memcpy(conflict_name->ancestor, buffer, len); } buffer += len; size -= len;;
  len = p_strnlen(buffer, size) + 1; if (size < len) { index_error_invalid("reading conflict name entries"); goto out_err; } if (len == 1) conflict_name->ours = ((void*)0); else { conflict_name->ours = git__malloc(len); GIT_ERROR_CHECK_ALLOC(conflict_name->ours); memcpy(conflict_name->ours, buffer, len); } buffer += len; size -= len;;
  len = p_strnlen(buffer, size) + 1; if (size < len) { index_error_invalid("reading conflict name entries"); goto out_err; } if (len == 1) conflict_name->theirs = ((void*)0); else { conflict_name->theirs = git__malloc(len); GIT_ERROR_CHECK_ALLOC(conflict_name->theirs); memcpy(conflict_name->theirs, buffer, len); } buffer += len; size -= len;;

  if (git_vector_insert(&index->names, conflict_name) < 0)
   goto out_err;

  continue;

out_err:
  git__free(conflict_name->ancestor);
  git__free(conflict_name->ours);
  git__free(conflict_name->theirs);
  git__free(conflict_name);
  return -1;
 }




 git_vector_set_sorted(&index->names, 1);

 return 0;
}
