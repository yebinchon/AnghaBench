
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int git_buf_clear (int *) ;
 int git_win32__find_programdata_dirs (int *) ;

__attribute__((used)) static int git_sysdir_guess_programdata_dirs(git_buf *out)
{



 git_buf_clear(out);
 return 0;

}
