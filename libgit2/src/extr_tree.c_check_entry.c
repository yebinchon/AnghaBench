
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_oid ;
typedef scalar_t__ git_filemode_t ;


 scalar_t__ GIT_FILEMODE_COMMIT ;
 int git_object__is_valid (int *,int const*,int ) ;
 scalar_t__ git_oid_is_zero (int const*) ;
 int otype_from_mode (scalar_t__) ;
 int tree_error (char*,char const*) ;
 int valid_entry_name (int *,char const*) ;
 int valid_filemode (scalar_t__) ;

__attribute__((used)) static int check_entry(git_repository *repo, const char *filename, const git_oid *id, git_filemode_t filemode)
{
 if (!valid_filemode(filemode))
  return tree_error("failed to insert entry: invalid filemode for file", filename);

 if (!valid_entry_name(repo, filename))
  return tree_error("failed to insert entry: invalid name for a tree entry", filename);

 if (git_oid_is_zero(id))
  return tree_error("failed to insert entry: invalid null OID", filename);

 if (filemode != GIT_FILEMODE_COMMIT &&
     !git_object__is_valid(repo, id, otype_from_mode(filemode)))
  return tree_error("failed to insert entry: invalid object specified", filename);

 return 0;
}
