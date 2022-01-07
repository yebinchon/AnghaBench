
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int u32 ;
typedef int HCRYPTPROV ;
typedef int HCFILE ;
typedef int BYTE ;


 int CryptAcquireContext (int *,int *,int *,int ,int ) ;
 int CryptGenRandom (int ,int,int *) ;
 int CryptReleaseContext (int ,int ) ;
 scalar_t__ GetLastError () ;
 int PROV_RSA_FULL ;
 int brain_logging (int ,int ,char*,...) ;
 int errno ;
 int hc_fclose (int *) ;
 int hc_fopen (int *,char const*,char*) ;
 int hc_fread (int *,int,int,int *) ;
 int rand () ;
 int srand (int ) ;
 int stderr ;
 int strerror (int ) ;
 int time (int *) ;

u32 brain_auth_challenge (void)
{
  srand (time (((void*)0)));

  u32 val = rand ();
  static const char *urandom = "/dev/urandom";

  HCFILE fp;

  if (hc_fopen (&fp, urandom, "rb") == 0)
  {
    brain_logging (stderr, 0, "%s: %s\n", urandom, strerror (errno));

    return val;
  }

  if (hc_fread (&val, sizeof (val), 1, &fp) != 1)
  {
    brain_logging (stderr, 0, "%s: %s\n", urandom, strerror (errno));

    hc_fclose (&fp);

    return val;
  }

  hc_fclose (&fp);



  return val;
}
