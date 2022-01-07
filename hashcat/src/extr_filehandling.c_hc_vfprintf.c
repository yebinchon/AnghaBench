
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_3__ {int pfp; scalar_t__ is_zip; int gfp; scalar_t__ is_gzip; } ;
typedef TYPE_1__ HCFILE ;


 int gzvprintf (int ,char const*,int ) ;
 int vfprintf (int ,char const*,int ) ;

int hc_vfprintf (HCFILE *fp, const char *format, va_list ap)
{
  int r = -1;

  if (fp == ((void*)0)) return r;

  if (fp->is_gzip)
  {
    r = gzvprintf (fp->gfp, format, ap);
  }
  else if (fp->is_zip)
  {
  }
  else
  {
    r = vfprintf (fp->pfp, format, ap);
  }

  return r;
}
