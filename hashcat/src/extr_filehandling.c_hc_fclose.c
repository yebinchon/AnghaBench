
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_gzip; int is_zip; int fd; int * mode; int * path; int * pfp; int ufp; int gfp; } ;
typedef TYPE_1__ HCFILE ;


 int close (int) ;
 int fclose (int *) ;
 int gzclose (int ) ;
 int unzClose (int ) ;
 int unzCloseCurrentFile (int ) ;

void hc_fclose (HCFILE *fp)
{
  if (fp == ((void*)0)) return;

  if (fp->is_gzip)
  {
    gzclose (fp->gfp);
  }
  else if (fp->is_zip)
  {
    unzCloseCurrentFile (fp->ufp);

    unzClose (fp->ufp);
  }
  else
  {
    fclose (fp->pfp);
  }

  close (fp->fd);

  fp->fd = -1;
  fp->pfp = ((void*)0);
  fp->is_gzip = 0;
  fp->is_zip = 0;

  fp->path = ((void*)0);
  fp->mode = ((void*)0);
}
