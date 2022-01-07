
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int last_error; } ;
typedef TYPE_1__ git_filebuf ;





 int GIT_ERROR_OS ;
 int GIT_ERROR_ZLIB ;
 int git_error_set (int ,char*) ;
 int git_error_set_oom () ;

__attribute__((used)) static int verify_last_error(git_filebuf *file)
{
 switch (file->last_error) {
 case 129:
  git_error_set(GIT_ERROR_OS, "failed to write out file");
  return -1;

 case 130:
  git_error_set_oom();
  return -1;

 case 128:
  git_error_set(GIT_ERROR_ZLIB,
   "Buffer error when writing out ZLib data");
  return -1;

 default:
  return 0;
 }
}
