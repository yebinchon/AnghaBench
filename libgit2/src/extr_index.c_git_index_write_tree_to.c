
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_oid ;
typedef int git_index ;


 int assert (int ) ;
 int git_tree__write_index (int *,int *,int *) ;

int git_index_write_tree_to(
 git_oid *oid, git_index *index, git_repository *repo)
{
 assert(oid && index && repo);
 return git_tree__write_index(oid, index, repo);
}
