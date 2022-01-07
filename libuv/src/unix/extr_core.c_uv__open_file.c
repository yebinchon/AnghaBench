
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int O_RDONLY ;
 int * fdopen (int,char*) ;
 int uv__close (int) ;
 int uv__open_cloexec (char const*,int ) ;

FILE* uv__open_file(const char* path) {
  int fd;
  FILE* fp;

  fd = uv__open_cloexec(path, O_RDONLY);
  if (fd < 0)
    return ((void*)0);

   fp = fdopen(fd, "r");
   if (fp == ((void*)0))
     uv__close(fd);

   return fp;
}
