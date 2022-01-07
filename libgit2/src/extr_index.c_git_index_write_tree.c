
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_oid ;
typedef int git_index ;


 int * INDEX_OWNER (int *) ;
 int assert (int) ;
 int create_index_error (int,char*) ;
 int git_tree__write_index (int *,int *,int *) ;

int git_index_write_tree(git_oid *oid, git_index *index)
{
 git_repository *repo;

 assert(oid && index);

 repo = INDEX_OWNER(index);

 if (repo == ((void*)0))
  return create_index_error(-1, "Failed to write tree. "
    "the index file is not backed up by an existing repository");

 return git_tree__write_index(oid, index, repo);
}
