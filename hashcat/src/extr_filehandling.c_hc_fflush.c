
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pfp; scalar_t__ is_zip; int gfp; scalar_t__ is_gzip; } ;
typedef TYPE_1__ HCFILE ;


 int Z_SYNC_FLUSH ;
 int fflush (int ) ;
 int gzflush (int ,int ) ;

void hc_fflush (HCFILE *fp)
{
  if (fp == ((void*)0)) return;

  if (fp->is_gzip)
  {
    gzflush (fp->gfp, Z_SYNC_FLUSH);
  }
  else if (fp->is_zip)
  {
  }
  else
  {
    fflush (fp->pfp);
  }
}
