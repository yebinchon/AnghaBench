
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int die_errno (char*) ;
 int * fdopen (int,char const*) ;

FILE *xfdopen(int fd, const char *mode)
{
 FILE *stream = fdopen(fd, mode);
 if (stream == ((void*)0))
  die_errno("Out of memory? fdopen failed");
 return stream;
}
