
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int HCFILE ;


 scalar_t__ MAX_KEY_SIZE ;
 int* crc32tab ;
 int hc_fclose (int *) ;
 int hc_fopen (int *,char const*,char*) ;
 size_t hc_fread (int*,int,scalar_t__,int *) ;
 int hcfree (int*) ;
 scalar_t__ hcmalloc (scalar_t__) ;

int cpu_crc32 (const char *filename, u8 keytab[64])
{
  u32 crc = ~0U;

  HCFILE fp;

  hc_fopen (&fp, filename, "rb");



  u8 *buf = (u8 *) hcmalloc ((1024 * 1024) + 1);

  size_t nread = hc_fread (buf, sizeof (u8), (1024 * 1024), &fp);

  hc_fclose (&fp);

  size_t kpos = 0;

  for (size_t fpos = 0; fpos < nread; fpos++)
  {
    crc = crc32tab[(crc ^ buf[fpos]) & 0xff] ^ (crc >> 8);

    keytab[kpos++] += (crc >> 24) & 0xff; if (kpos >= 64) kpos = 0;
    keytab[kpos++] += (crc >> 16) & 0xff; if (kpos >= 64) kpos = 0;
    keytab[kpos++] += (crc >> 8) & 0xff; if (kpos >= 64) kpos = 0;
    keytab[kpos++] += (crc >> 0) & 0xff; if (kpos >= 64) kpos = 0;
  }

  hcfree (buf);

  return 0;
}
