
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository_item_t ;
typedef int git_repository ;


 int GIT_ERROR_INVALID ;



 int GIT_REPOSITORY_ITEM__LAST ;
 int git_error_set (int ,char*) ;
 char* git_repository_commondir (int const*) ;
 char* git_repository_path (int const*) ;
 char* git_repository_workdir (int const*) ;

__attribute__((used)) static const char *resolved_parent_path(const git_repository *repo, git_repository_item_t item, git_repository_item_t fallback)
{
 const char *parent;

 switch (item) {
  case 129:
   parent = git_repository_path(repo);
   break;
  case 128:
   parent = git_repository_workdir(repo);
   break;
  case 130:
   parent = git_repository_commondir(repo);
   break;
  default:
   git_error_set(GIT_ERROR_INVALID, "invalid item directory");
   return ((void*)0);
 }
 if (!parent && fallback != GIT_REPOSITORY_ITEM__LAST)
  return resolved_parent_path(repo, fallback, GIT_REPOSITORY_ITEM__LAST);

 return parent;
}
