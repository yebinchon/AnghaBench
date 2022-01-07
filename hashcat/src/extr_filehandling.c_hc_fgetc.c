
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pfp; int ufp; scalar_t__ is_zip; int gfp; scalar_t__ is_gzip; } ;
typedef TYPE_1__ HCFILE ;


 int fgetc (int ) ;
 int gzgetc (int ) ;
 int unzReadCurrentFile (int ,unsigned char*,int) ;

int hc_fgetc (HCFILE *fp)
{
  int r = -1;

  if (fp == ((void*)0)) return r;

  if (fp->is_gzip)
  {
    r = gzgetc (fp->gfp);
  }
  else if (fp->is_zip)
  {
    unsigned char c = 0;

    if (unzReadCurrentFile (fp->ufp, &c, 1) == 1) r = (int) c;
  }
  else
  {
    r = fgetc (fp->pfp);
  }

  return r;
}
