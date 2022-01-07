
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_index ;


 int * INDEX_OWNER (int const*) ;

git_repository *git_index_owner(const git_index *index)
{
 return INDEX_OWNER(index);
}
