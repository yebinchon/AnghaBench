
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gengetopt_args_info {int dummy; } ;
typedef int FILE ;


 int EXIT_FAILURE ;
 char* IMAGETAG_CMDLINE_PACKAGE ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char*,char const*) ;
 int imagetag_cmdline_dump (int *,struct gengetopt_args_info*) ;
 int stderr ;

int
imagetag_cmdline_file_save(const char *filename, struct gengetopt_args_info *args_info)
{
  FILE *outfile;
  int i = 0;

  outfile = fopen(filename, "w");

  if (!outfile)
    {
      fprintf (stderr, "%s: cannot open file for writing: %s\n", IMAGETAG_CMDLINE_PACKAGE, filename);
      return EXIT_FAILURE;
    }

  i = imagetag_cmdline_dump(outfile, args_info);
  fclose (outfile);

  return i;
}
