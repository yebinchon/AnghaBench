
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_strarray ;
typedef int git_repository ;


 int git_tag_list_match (int *,char*,int *) ;

int git_tag_list(git_strarray *tag_names, git_repository *repo)
{
 return git_tag_list_match(tag_names, "", repo);
}
