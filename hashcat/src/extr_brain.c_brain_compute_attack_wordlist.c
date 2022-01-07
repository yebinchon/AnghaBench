
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u64 ;
typedef int buf ;
typedef int XXH64_state_t ;
typedef int HCFILE ;


 int FBUFSZ ;
 int * XXH64_createState () ;
 int const XXH64_digest (int *) ;
 int XXH64_freeState (int *) ;
 int XXH64_reset (int *,int ) ;
 int XXH64_update (int *,char*,size_t const) ;
 int hc_fclose (int *) ;
 int hc_feof (int *) ;
 int hc_fopen (int *,char const*,char*) ;
 size_t hc_fread (char*,int,int,int *) ;
 int memset (char*,int ,int) ;

u64 brain_compute_attack_wordlist (const char *filename)
{
  XXH64_state_t *state = XXH64_createState ();

  XXH64_reset (state, 0);



  char buf[8192];

  HCFILE fp;

  hc_fopen (&fp, filename, "rb");

  while (!hc_feof (&fp))
  {
    memset (buf, 0, sizeof (buf));

    const size_t nread = hc_fread (buf, 1, 8192, &fp);

    XXH64_update (state, buf, nread);
  }

  hc_fclose (&fp);

  const u64 hash = XXH64_digest (state);

  XXH64_freeState (state);

  return hash;
}
