
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tempfile {int * fp; int fd; } ;
typedef int FILE ;


 int BUG (char*) ;
 int * fdopen (int ,char const*) ;
 int is_tempfile_active (struct tempfile*) ;

FILE *fdopen_tempfile(struct tempfile *tempfile, const char *mode)
{
 if (!is_tempfile_active(tempfile))
  BUG("fdopen_tempfile() called for inactive object");
 if (tempfile->fp)
  BUG("fdopen_tempfile() called for open object");

 tempfile->fp = fdopen(tempfile->fd, mode);
 return tempfile->fp;
}
