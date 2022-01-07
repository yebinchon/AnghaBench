
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_3__ {int pfp; int ufp; scalar_t__ is_zip; int gfp; scalar_t__ is_gzip; } ;
typedef TYPE_1__ HCFILE ;


 int ftello (int ) ;
 scalar_t__ gztell (int ) ;
 int unztell (int ) ;

off_t hc_ftell (HCFILE *fp)
{
  off_t n = 0;

  if (fp == ((void*)0)) return -1;

  if (fp->is_gzip)
  {
    n = (off_t) gztell (fp->gfp);
  }
  else if (fp->is_zip)
  {
    n = unztell (fp->ufp);
  }
  else
  {
    n = ftello (fp->pfp);
  }

  return n;
}
