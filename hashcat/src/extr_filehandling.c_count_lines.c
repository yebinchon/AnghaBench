
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int HCFILE ;


 scalar_t__ HCBUFSIZ_LARGE ;
 int hc_feof (int *) ;
 size_t hc_fread (char*,int,scalar_t__,int *) ;
 int hcfree (char*) ;
 scalar_t__ hcmalloc (scalar_t__) ;

u64 count_lines (HCFILE *fp)
{
  u64 cnt = 0;

  char *buf = (char *) hcmalloc (HCBUFSIZ_LARGE + 1);

  char prev = '\n';

  while (!hc_feof (fp))
  {
    size_t nread = hc_fread (buf, sizeof (char), HCBUFSIZ_LARGE, fp);

    if (nread < 1) continue;

    size_t i;

    for (i = 0; i < nread; i++)
    {
      if (prev == '\n') cnt++;

      prev = buf[i];
    }
  }

  hcfree (buf);

  return cnt;
}
