
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_vector ;
struct TYPE_4__ {int readers; } ;
typedef TYPE_1__ git_index ;


 int git_atomic_dec (int *) ;
 int git_index_free (TYPE_1__*) ;
 int git_vector_free (int *) ;

void git_index_snapshot_release(git_vector *snap, git_index *index)
{
 git_vector_free(snap);

 git_atomic_dec(&index->readers);

 git_index_free(index);
}
