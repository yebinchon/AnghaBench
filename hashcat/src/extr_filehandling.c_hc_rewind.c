
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pfp; int ufp; scalar_t__ is_zip; int gfp; scalar_t__ is_gzip; } ;
typedef TYPE_1__ HCFILE ;


 int gzrewind (int ) ;
 int rewind (int ) ;
 int unzGoToFirstFile (int ) ;

void hc_rewind (HCFILE *fp)
{
  if (fp == ((void*)0)) return;

  if (fp->is_gzip)
  {
    gzrewind (fp->gfp);
  }
  else if (fp->is_zip)
  {
    unzGoToFirstFile (fp->ufp);
  }
  else
  {
    rewind (fp->pfp);
  }
}
