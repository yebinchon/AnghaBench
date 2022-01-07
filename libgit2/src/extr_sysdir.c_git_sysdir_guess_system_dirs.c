
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int git_buf_sets (int *,char*) ;
 int git_win32__find_system_dirs (int *,char*) ;

__attribute__((used)) static int git_sysdir_guess_system_dirs(git_buf *out)
{



 return git_buf_sets(out, "/etc");

}
