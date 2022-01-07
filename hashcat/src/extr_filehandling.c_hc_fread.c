
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pfp; int ufp; scalar_t__ is_zip; int gfp; scalar_t__ is_gzip; } ;
typedef TYPE_1__ HCFILE ;


 size_t fread (void*,size_t,size_t,int ) ;
 size_t gzfread (void*,size_t,size_t,int ) ;
 size_t unzReadCurrentFile (int ,void*,unsigned int) ;

size_t hc_fread (void *ptr, size_t size, size_t nmemb, HCFILE *fp)
{
  size_t n = -1;

  if (fp == ((void*)0)) return n;

  if (fp->is_gzip)
  {
    n = gzfread (ptr, size, nmemb, fp->gfp);
  }
  else if (fp->is_zip)
  {
    unsigned s = size * nmemb;

    n = unzReadCurrentFile (fp->ufp, ptr, s);
  }
  else
  {
    n = fread (ptr, size, nmemb, fp->pfp);
  }

  return n;
}
