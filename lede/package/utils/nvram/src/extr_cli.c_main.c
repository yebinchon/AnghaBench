
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvram_handle_t ;


 int do_get (int *,char const*) ;
 int do_info (int *) ;
 int do_set (int *,char const*) ;
 int do_show (int *) ;
 int do_unset (int *,char const*) ;
 int fprintf (int ,char*,...) ;
 int nvram_close (int *) ;
 int nvram_commit (int *) ;
 int * nvram_open_rdonly () ;
 int * nvram_open_staging () ;
 int staging_to_nvram () ;
 int stderr ;
 int strcmp (char const*,char*) ;
 int usage () ;

int main( int argc, const char *argv[] )
{
 nvram_handle_t *nvram;
 int commit = 0;
 int write = 0;
 int stat = 1;
 int done = 0;
 int i;

 if( argc < 2 ) {
  usage();
  return 1;
 }


 if( ( !strcmp(argv[1], "set") && 2 < argc ) ||
  ( !strcmp(argv[1], "unset") && 2 < argc ) ||
  !strcmp(argv[1], "commit") )
  write = 1;


 nvram = write ? nvram_open_staging() : nvram_open_rdonly();

 if( nvram != ((void*)0) && argc > 1 )
 {
  for( i = 1; i < argc; i++ )
  {
   if( !strcmp(argv[i], "show") )
   {
    stat = do_show(nvram);
    done++;
   }
   else if( !strcmp(argv[i], "info") )
   {
    stat = do_info(nvram);
    done++;
   }
   else if( !strcmp(argv[i], "get") || !strcmp(argv[i], "unset") || !strcmp(argv[i], "set") )
   {
    if( (i+1) < argc )
    {
     switch(argv[i++][0])
     {
      case 'g':
       stat = do_get(nvram, argv[i]);
       break;

      case 'u':
       stat = do_unset(nvram, argv[i]);
       break;

      case 's':
       stat = do_set(nvram, argv[i]);
       break;
     }
     done++;
    }
    else
    {
     fprintf(stderr, "Command '%s' requires an argument!\n", argv[i]);
     done = 0;
     break;
    }
   }
   else if( !strcmp(argv[i], "commit") )
   {
    commit = 1;
    done++;
   }
   else
   {
    fprintf(stderr, "Unknown option '%s' !\n", argv[i]);
    done = 0;
    break;
   }
  }

  if( write )
   stat = nvram_commit(nvram);

  nvram_close(nvram);

  if( commit )
   stat = staging_to_nvram();
 }

 if( !nvram )
 {
  fprintf(stderr,
   "Could not open nvram! Possible reasons are:\n"
   "	- No device found (/proc not mounted or no nvram present)\n"
   "	- Insufficient permissions to open mtd device\n"
   "	- Insufficient memory to complete operation\n"
   "	- Memory mapping failed or not supported\n"
   "	- Nvram magic not found in specific nvram partition\n"
  );

  stat = 1;
 }
 else if( !done )
 {
  usage();
  stat = 1;
 }

 return stat;
}
