
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_3__ {int pfp; scalar_t__ is_zip; int gfp; scalar_t__ is_gzip; } ;
typedef TYPE_1__ HCFILE ;


 int fseeko (int ,int ,int) ;
 int gzseek (int ,int ,int) ;

int hc_fseek (HCFILE *fp, off_t offset, int whence)
{
  int r = -1;

  if (fp == ((void*)0)) return r;

  if (fp->is_gzip)
  {
    r = gzseek (fp->gfp, offset, whence);
  }
  else if (fp->is_zip)
  {
  }
  else
  {
    r = fseeko (fp->pfp, offset, whence);
  }

  return r;
}
