
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int create_ce_mode (int) ;
 int error (char*,char const*) ;
 char const* file_from_standard_input ;
 scalar_t__ lstat (char const*,struct stat*) ;
 int strcasecmp (char const*,char*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int get_mode(const char *path, int *mode)
{
 struct stat st;

 if (!path || !strcmp(path, "/dev/null"))
  *mode = 0;




 else if (path == file_from_standard_input)
  *mode = create_ce_mode(0666);
 else if (lstat(path, &st))
  return error("Could not access '%s'", path);
 else
  *mode = st.st_mode;
 return 0;
}
