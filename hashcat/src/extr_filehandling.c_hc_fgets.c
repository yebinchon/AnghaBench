
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pfp; int ufp; scalar_t__ is_zip; int gfp; scalar_t__ is_gzip; } ;
typedef TYPE_1__ HCFILE ;


 char* fgets (char*,int,int ) ;
 char* gzgets (int ,char*,int) ;
 scalar_t__ unzReadCurrentFile (int ,char*,int) ;

char *hc_fgets (char *buf, int len, HCFILE *fp)
{
  char *r = ((void*)0);

  if (fp == ((void*)0)) return r;

  if (fp->is_gzip)
  {
    r = gzgets (fp->gfp, buf, len);
  }
  else if (fp->is_zip)
  {
    if (unzReadCurrentFile (fp->ufp, buf, len) > 0) r = buf;
  }
  else
  {
    r = fgets (buf, len, fp->pfp);
  }

  return r;
}
