
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CLOEXEC ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int S_IRUSR ;
 int S_IWUSR ;
 int close (int const) ;
 int hc_path_exist (char const*) ;
 int open (char const*,int,int) ;
 int unlink (char const*) ;

bool hc_path_create (const char *path)
{
  if (hc_path_exist (path) == 1) return 0;




  const int fd = open (path, O_WRONLY | O_CREAT | O_TRUNC, S_IRUSR | S_IWUSR);


  if (fd == -1) return 0;

  close (fd);

  unlink (path);

  return 1;
}
