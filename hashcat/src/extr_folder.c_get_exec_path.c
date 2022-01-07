
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int ssize_t ;


 int CTL_KERN ;
 int KERN_PROC ;
 int KERN_PROC_PATHNAME ;
 scalar_t__ _NSGetExecutablePath (char*,int *) ;
 int getpid () ;
 int hc_asprintf (char**,char*,int ) ;
 int hcfree (char*) ;
 int memset (char*,int ,size_t const) ;
 int readlink (char*,char*,size_t const) ;
 size_t strlen (char*) ;
 int sysctl (int*,int,char*,size_t*,int *,int ) ;

__attribute__((used)) static int get_exec_path (char *exec_path, const size_t exec_path_sz)
{


  char *tmp;

  hc_asprintf (&tmp, "/proc/%d/exe", getpid ());

  const ssize_t len = readlink (tmp, exec_path, exec_path_sz - 1);

  hcfree (tmp);

  if (len == -1) return -1;
  exec_path[len] = 0;

  return 0;
}
