
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_mtime_nsec; scalar_t__ st_ctime_nsec; } ;


 int cl_git_mkfile (char const*,char*) ;
 int cl_must_pass (int ) ;
 int p_stat (char const*,struct stat*) ;

__attribute__((used)) static bool try_create_file_with_nsec_timestamp(const char *path)
{
 struct stat st;
 int try;


 for (try = 0; try < 3; try++) {
  cl_git_mkfile(path, "This is hopefully a file with nanoseconds!");

  cl_must_pass(p_stat(path, &st));

  if (st.st_ctime_nsec && st.st_mtime_nsec)
   return 1;
 }

 return 0;
}
