
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
typedef int off_t ;


 int LOG_DEBUG (char*) ;
 int errno ;
 scalar_t__ stat (char const*,struct stat*) ;
 int strerror (int ) ;

off_t
file_size (const char *filename)
{
  struct stat st;

  if (stat (filename, &st) == 0)
    return st.st_size;

  LOG_DEBUG (("Can't determine size of %s: %s\n", filename, strerror (errno)));

  return -1;
}
