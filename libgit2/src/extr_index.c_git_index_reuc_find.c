
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reuc_search; int reuc; } ;
typedef TYPE_1__ git_index ;


 int git_vector_bsearch2 (size_t*,int *,int ,char const*) ;

int git_index_reuc_find(size_t *at_pos, git_index *index, const char *path)
{
 return git_vector_bsearch2(at_pos, &index->reuc, index->reuc_search, path);
}
