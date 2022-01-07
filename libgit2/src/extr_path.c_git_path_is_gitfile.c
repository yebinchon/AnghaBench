
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t git_path_gitfile ;
typedef int git_path_fs ;
struct TYPE_3__ {char* file; size_t filelen; char* hash; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int GIT_ERROR_OS ;



 size_t GIT_PATH_GITFILE_GITIGNORE ;
 int git_error_set (int ,char*) ;
 TYPE_1__* gitfiles ;
 int verify_dotgit_hfs_generic (char const*,size_t,char const*,size_t) ;
 int verify_dotgit_ntfs_generic (char const*,size_t,char const*,size_t,char const*) ;

extern int git_path_is_gitfile(const char *path, size_t pathlen, git_path_gitfile gitfile, git_path_fs fs)
{
 const char *file, *hash;
 size_t filelen;

 if (!(gitfile >= GIT_PATH_GITFILE_GITIGNORE && gitfile < ARRAY_SIZE(gitfiles))) {
  git_error_set(GIT_ERROR_OS, "invalid gitfile for path validation");
  return -1;
 }

 file = gitfiles[gitfile].file;
 filelen = gitfiles[gitfile].filelen;
 hash = gitfiles[gitfile].hash;

 switch (fs) {
 case 130:
  return !verify_dotgit_ntfs_generic(path, pathlen, file, filelen, hash) ||
         !verify_dotgit_hfs_generic(path, pathlen, file, filelen);
 case 128:
  return !verify_dotgit_ntfs_generic(path, pathlen, file, filelen, hash);
 case 129:
  return !verify_dotgit_hfs_generic(path, pathlen, file, filelen);
 default:
  git_error_set(GIT_ERROR_OS, "invalid filesystem for path validation");
  return -1;
 }
}
