
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_vector ;
struct TYPE_8__ {int _cmp; } ;
struct TYPE_7__ {TYPE_2__ entries; int readers; } ;
typedef TYPE_1__ git_index ;


 int GIT_REFCOUNT_INC (TYPE_1__*) ;
 int git_atomic_inc (int *) ;
 int git_index_snapshot_release (int *,TYPE_1__*) ;
 int git_vector_dup (int *,TYPE_2__*,int ) ;
 int git_vector_sort (TYPE_2__*) ;

int git_index_snapshot_new(git_vector *snap, git_index *index)
{
 int error;

 GIT_REFCOUNT_INC(index);

 git_atomic_inc(&index->readers);
 git_vector_sort(&index->entries);

 error = git_vector_dup(snap, &index->entries, index->entries._cmp);

 if (error < 0)
  git_index_snapshot_release(snap, index);

 return error;
}
