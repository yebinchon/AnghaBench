
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pfp; int ufp; scalar_t__ is_zip; int gfp; scalar_t__ is_gzip; } ;
typedef TYPE_1__ HCFILE ;


 int feof (int ) ;
 int gzeof (int ) ;
 int unzeof (int ) ;

int hc_feof (HCFILE *fp)
{
  int r = -1;

  if (fp == ((void*)0)) return r;

  if (fp->is_gzip)
  {
    r = gzeof (fp->gfp);
  }
  else if (fp->is_zip)
  {
    r = unzeof (fp->ufp);
  }
  else
  {
    r = feof (fp->pfp);
  }

  return r;
}
