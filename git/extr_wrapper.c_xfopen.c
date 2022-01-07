
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ EINTR ;
 int _ (char*) ;
 int die_errno (int ,char const*) ;
 scalar_t__ errno ;
 int * fopen (char const*,char const*) ;

FILE *xfopen(const char *path, const char *mode)
{
 for (;;) {
  FILE *fp = fopen(path, mode);
  if (fp)
   return fp;
  if (errno == EINTR)
   continue;

  if (*mode && mode[1] == '+')
   die_errno(_("could not open '%s' for reading and writing"), path);
  else if (*mode == 'w' || *mode == 'a')
   die_errno(_("could not open '%s' for writing"), path);
  else
   die_errno(_("could not open '%s' for reading"), path);
 }
}
