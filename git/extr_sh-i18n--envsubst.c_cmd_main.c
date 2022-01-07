
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EBADF ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int all_variables ;
 scalar_t__ errno ;
 int error (char*) ;
 int exit (int ) ;
 scalar_t__ fclose (int ) ;
 scalar_t__ ferror (int ) ;
 scalar_t__ fflush (int ) ;
 int note_variables (char const*) ;
 int print_variables (char const*) ;
 int stderr ;
 int strcmp (char const*,char*) ;
 int subst_from_stdin () ;
 int trace2_cmd_name (char*) ;

int
cmd_main (int argc, const char *argv[])
{



  trace2_cmd_name("sh-i18n--envsubst");

  switch (argc)
 {
 case 1:
   error ("we won't substitute all variables on stdin for you");
   break;




 case 2:

   all_variables = 0;
   note_variables (argv[1]);
      subst_from_stdin ();
   break;
 case 3:

   if (strcmp(argv[1], "--variables"))
  error ("first argument must be --variables when two are given");

      print_variables (argv[2]);
   break;
 default:
   error ("too many arguments");
   break;
 }




  errno = 0;
  if (ferror (stderr) || fflush (stderr))
    {
      fclose (stderr);
      exit (EXIT_FAILURE);
    }
  if (fclose (stderr) && errno != EBADF)
    exit (EXIT_FAILURE);

  exit (EXIT_SUCCESS);
}
