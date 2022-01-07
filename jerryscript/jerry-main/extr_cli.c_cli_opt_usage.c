
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ id; char* opt; char* longopt; char* meta; } ;
typedef TYPE_1__ cli_opt_t ;


 int CLI_LINE_INDENT ;
 int CLI_LINE_LENGTH ;
 scalar_t__ CLI_OPT_DEFAULT ;
 int cli_print_pad (int) ;
 int printf (char*,...) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void
cli_opt_usage (const char *prog_name_p,
               const char *command_name_p,
               const cli_opt_t *opts_p)
{
  int length = (int) strlen (prog_name_p);
  const cli_opt_t *current_opt_p = opts_p;

  printf ("%s", prog_name_p);

  if (command_name_p != ((void*)0))
  {
    int command_length = (int) strlen (command_name_p);

    if (length + 1 + command_length > CLI_LINE_LENGTH)
    {
      length = CLI_LINE_INDENT - 1;
      printf ("\n");
      cli_print_pad (length);
    }

    printf (" %s", command_name_p);
  }

  while (current_opt_p->id != CLI_OPT_DEFAULT)
  {
    const char *opt_p = current_opt_p->opt;
    int opt_length = 2 + 1;

    if (opt_p == ((void*)0))
    {
      opt_p = current_opt_p->longopt;
      opt_length++;
    }

    opt_length += (int) strlen (opt_p);

    if (length + 1 + opt_length >= CLI_LINE_LENGTH)
    {
      length = CLI_LINE_INDENT - 1;
      printf ("\n");
      cli_print_pad (length);
    }
    length += opt_length;

    printf (" [");

    if (current_opt_p->opt != ((void*)0))
    {
      printf ("-%s", opt_p);
    }
    else
    {
      printf ("--%s", opt_p);
    }

    if (current_opt_p->meta != ((void*)0))
    {
      printf (" %s", current_opt_p->meta);
    }

    printf ("]");

    current_opt_p++;
  }

  if (current_opt_p->meta != ((void*)0))
  {
    const char *opt_p = current_opt_p->meta;
    int opt_length = (int) (2 + strlen (opt_p));

    if (length + 1 + opt_length >= CLI_LINE_LENGTH)
    {
      length = CLI_LINE_INDENT - 1;
      printf ("\n");
      cli_print_pad (length);
    }

    printf (" [%s]", opt_p);
  }

  printf ("\n\n");
}
