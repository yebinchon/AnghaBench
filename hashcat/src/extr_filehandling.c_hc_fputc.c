
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pfp; scalar_t__ is_zip; int gfp; scalar_t__ is_gzip; } ;
typedef TYPE_1__ HCFILE ;


 int fputc (int,int ) ;
 int gzputc (int ,int) ;

int hc_fputc (int c, HCFILE *fp)
{
  int r = -1;

  if (fp == ((void*)0)) return r;

  if (fp->is_gzip)
  {
    r = gzputc (fp->gfp, c);
  }
  else if (fp->is_zip)
  {
  }
  else
  {
    r = fputc (c, fp->pfp);
  }

  return r;
}
