
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EACCES ;
 int ENOENT ;
 int ENOTDIR ;
 int errno ;
 int execvp (char const*,char* const*) ;
 scalar_t__ exists_in_PATH (char const*) ;
 int strchr (char const*,char) ;
 int trace2_exec (char const*,char const**) ;
 int trace2_exec_result (int,int) ;

int sane_execvp(const char *file, char * const argv[])
{
 int exec_id = trace2_exec(file, (const char **)argv);


 if (!execvp(file, argv))
  return 0;


 {
  int ec = errno;
  trace2_exec_result(exec_id, ec);
  errno = ec;
 }
 if (errno == EACCES && !strchr(file, '/'))
  errno = exists_in_PATH(file) ? EACCES : ENOENT;
 else if (errno == ENOTDIR && !strchr(file, '/'))
  errno = ENOENT;
 return -1;
}
