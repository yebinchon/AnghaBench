
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HCFILE ;


 scalar_t__ HCBUFSIZ_TINY ;
 char* hc_fgets (char*,scalar_t__,int *) ;
 int hcfree (char*) ;
 scalar_t__ hcmalloc (scalar_t__) ;
 int sscanf (char*,char const*,void*) ;

int hc_fscanf (HCFILE *fp, const char *format, void *ptr)
{
  if (fp == ((void*)0)) return -1;

  char *buf = (char *) hcmalloc (HCBUFSIZ_TINY);

  if (buf == ((void*)0)) return -1;

  char *b = hc_fgets (buf, HCBUFSIZ_TINY - 1, fp);

  if (b == ((void*)0))
  {
    hcfree (buf);

    return -1;
  }

  sscanf (b, format, ptr);

  hcfree (buf);

  return 1;
}
