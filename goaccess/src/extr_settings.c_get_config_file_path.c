
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* iconfigfile; scalar_t__ load_global_config; } ;
typedef int FILE ;


 int FATAL (char*,int ) ;
 TYPE_1__ conf ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 char* get_global_config () ;
 char* get_home () ;
 char* realpath (char*,int *) ;
 int strerror (int ) ;

char *
get_config_file_path (void)
{
  char *upath = ((void*)0), *rpath = ((void*)0);
  FILE *file;


  if (conf.iconfigfile != ((void*)0)) {
    rpath = realpath (conf.iconfigfile, ((void*)0));
    if (rpath == ((void*)0))
      FATAL ("Unable to open the specified config file. %s", strerror (errno));
    return rpath;
  }


  upath = get_home ();
  rpath = realpath (upath, ((void*)0));
  if (upath) {
    free (upath);
  }


  if ((file = fopen (rpath, "r")) == ((void*)0) && conf.load_global_config) {
    upath = get_global_config ();
    rpath = realpath (upath, ((void*)0));
    if (upath) {
      free (upath);
    }
  } else {
    fclose (file);
  }

  return rpath;
}
