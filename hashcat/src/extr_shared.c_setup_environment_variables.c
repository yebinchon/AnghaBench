
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* profile_dir; } ;
typedef TYPE_1__ folder_config_t ;


 int CW_SYNC_WINENV ;
 int cygwin_internal (int ) ;
 int free (char*) ;
 char* getenv (char*) ;
 int hc_asprintf (char**,char*,char*) ;
 int putenv (char*) ;

void setup_environment_variables (const folder_config_t *folder_config)
{
  char *compute = getenv ("COMPUTE");

  if (compute)
  {
    char *display;

    hc_asprintf (&display, "DISPLAY=%s", compute);

    putenv (display);

    free (display);
  }
  else
  {
    if (getenv ("DISPLAY") == ((void*)0))
      putenv ((char *) "DISPLAY=:0");
  }
  if (getenv ("TMPDIR") == ((void*)0))
  {
    char *tmpdir = ((void*)0);

    hc_asprintf (&tmpdir, "TMPDIR=%s", folder_config->profile_dir);

    putenv (tmpdir);


  }

  if (getenv ("CL_CONFIG_USE_VECTORIZER") == ((void*)0))
    putenv ((char *) "CL_CONFIG_USE_VECTORIZER=False");




}
