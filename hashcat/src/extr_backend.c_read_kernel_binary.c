
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ time_t ;
struct stat {size_t st_size; } ;
typedef int hashcat_ctx_t ;
typedef int HCFILE ;


 scalar_t__ EXTRASZ ;
 int errno ;
 int event_log_error (int *,char*,char const*,int ) ;
 int hc_fclose (int *) ;
 int hc_fopen (int *,char const*,char*) ;
 size_t hc_fread (char*,int,size_t,int *) ;
 int hcfree (char*) ;
 scalar_t__ hcmalloc (scalar_t__) ;
 int snprintf (char*,scalar_t__,char*,int) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int strerror (int ) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static bool read_kernel_binary (hashcat_ctx_t *hashcat_ctx, const char *kernel_file, size_t *kernel_lengths, char **kernel_sources, const bool force_recompile)
{
  HCFILE fp;

  if (hc_fopen (&fp, kernel_file, "rb") == 1)
  {
    struct stat st;

    if (stat (kernel_file, &st))
    {
      hc_fclose (&fp);

      return 0;
    }



    size_t klen = st.st_size;

    char *buf = (char *) hcmalloc (klen + 1 + 100);

    size_t num_read = hc_fread (buf, sizeof (char), klen, &fp);

    hc_fclose (&fp);

    if (num_read != klen)
    {
      event_log_error (hashcat_ctx, "%s: %s", kernel_file, strerror (errno));

      hcfree (buf);

      return 0;
    }

    buf[klen] = 0;

    if (force_recompile == 1)
    {




      time_t tlog = time (((void*)0));

      const int extra_len = snprintf (buf + klen, 100, "\n//%u\n", (u32) tlog);

      klen += extra_len;
    }

    kernel_lengths[0] = klen;

    kernel_sources[0] = buf;
  }
  else
  {
    event_log_error (hashcat_ctx, "%s: %s", kernel_file, strerror (errno));

    return 0;
  }

  return 1;
}
