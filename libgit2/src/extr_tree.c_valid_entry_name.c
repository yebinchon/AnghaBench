
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int GIT_PATH_REJECT_DOT_GIT ;
 int GIT_PATH_REJECT_SLASH ;
 int GIT_PATH_REJECT_TRAVERSAL ;
 scalar_t__ git_path_isvalid (int *,char const*,int ,int) ;

__attribute__((used)) static int valid_entry_name(git_repository *repo, const char *filename)
{
 return *filename != '\0' &&
  git_path_isvalid(repo, filename, 0,
  GIT_PATH_REJECT_TRAVERSAL | GIT_PATH_REJECT_DOT_GIT | GIT_PATH_REJECT_SLASH);
}
