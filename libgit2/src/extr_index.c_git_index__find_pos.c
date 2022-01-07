
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index ;


 int assert (int) ;
 int index_find (size_t*,int *,char const*,size_t,int) ;

int git_index__find_pos(
 size_t *out, git_index *index, const char *path, size_t path_len, int stage)
{
 assert(index && path);
 return index_find(out, index, path, path_len, stage);
}
