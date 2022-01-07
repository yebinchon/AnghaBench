
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pfp; scalar_t__ is_zip; int gfp; scalar_t__ is_gzip; } ;
typedef TYPE_1__ HCFILE ;


 size_t fwrite (void const*,size_t,size_t,int ) ;
 size_t gzfwrite (void const*,size_t,size_t,int ) ;

size_t hc_fwrite (const void *ptr, size_t size, size_t nmemb, HCFILE *fp)
{
  size_t n = -1;

  if (fp == ((void*)0)) return n;

  if (fp->is_gzip)
  {
    n = gzfwrite (ptr, size, nmemb, fp->gfp);
  }
  else if (fp->is_zip)
  {
  }
  else
  {
    n = fwrite (ptr, size, nmemb, fp->pfp);
  }

  if (n != nmemb) return -1;

  return n;
}
