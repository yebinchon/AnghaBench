
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* index_file_path; int deleted; int reuc; int names; int entries; int entries_map; int readers; } ;
typedef TYPE_1__ git_index ;


 int assert (int) ;
 int git__free (TYPE_1__*) ;
 int git__memzero (TYPE_1__*,int) ;
 int git_atomic_get (int *) ;
 int git_idxmap_free (int ) ;
 int git_index_clear (TYPE_1__*) ;
 int git_vector_free (int *) ;

__attribute__((used)) static void index_free(git_index *index)
{



 assert(!git_atomic_get(&index->readers));

 git_index_clear(index);
 git_idxmap_free(index->entries_map);
 git_vector_free(&index->entries);
 git_vector_free(&index->names);
 git_vector_free(&index->reuc);
 git_vector_free(&index->deleted);

 git__free(index->index_file_path);

 git__memzero(index, sizeof(*index));
 git__free(index);
}
