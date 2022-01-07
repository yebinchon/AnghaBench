
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int O_RDONLY ;
 int S_ISREG (int) ;
 int S_IXUSR ;
 int close (int) ;
 scalar_t__ ends_with (char const*,char*) ;
 int open (char const*,int ) ;
 int read (int,char*,int) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int strcmp (char*,char*) ;

int is_executable(const char *name)
{
 struct stat st;

 if (stat(name, &st) ||
     !S_ISREG(st.st_mode))
  return 0;
 return st.st_mode & S_IXUSR;
}
