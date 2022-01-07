
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hashcat_ctx_t ;
typedef int HCFILE ;


 int errno ;
 int event_log_error (int *,char*,char*,int ) ;
 int hc_fclose (int *) ;
 int hc_fflush (int *) ;
 int hc_fopen (int *,char*,char*) ;
 int hc_fwrite (char*,int,size_t,int *) ;
 int hc_lockfile (int *) ;
 int strerror (int ) ;

__attribute__((used)) static bool write_kernel_binary (hashcat_ctx_t *hashcat_ctx, char *kernel_file, char *binary, size_t binary_size)
{
  if (binary_size > 0)
  {
    HCFILE fp;

    if (hc_fopen (&fp, kernel_file, "wb") == 0)
    {
      event_log_error (hashcat_ctx, "%s: %s", kernel_file, strerror (errno));

      return 0;
    }

    if (hc_lockfile (&fp) == -1)
    {
      hc_fclose (&fp);

      event_log_error (hashcat_ctx, "%s: %s", kernel_file, strerror (errno));

      return 0;
    }

    hc_fwrite (binary, sizeof (char), binary_size, &fp);

    hc_fflush (&fp);

    hc_fclose (&fp);
  }

  return 1;
}
