
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_odb_object ;
typedef int git_commit ;


 int commit_parse (int *,int ,int ,unsigned int) ;
 int git_odb_object_data (int *) ;
 int git_odb_object_size (int *) ;

int git_commit__parse_ext(git_commit *commit, git_odb_object *odb_obj, unsigned int flags)
{
 return commit_parse(commit, git_odb_object_data(odb_obj), git_odb_object_size(odb_obj), flags);
}
