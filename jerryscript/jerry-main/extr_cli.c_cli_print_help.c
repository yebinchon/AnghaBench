
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLI_LINE_LENGTH ;
 int CLI_LINE_TAB ;
 int cli_print_pad (int) ;
 int cli_print_prefix (char const*,int) ;
 int printf (char*) ;

__attribute__((used)) static void
cli_print_help (const char *help)
{
  while (help != ((void*)0) && *help != 0)
  {
    int length = -1;
    int i = 0;
    for (; i < CLI_LINE_LENGTH - CLI_LINE_TAB && help[i] != 0; i++)
    {
      if (help[i] == ' ')
      {
        length = i;
      }
    }
    if (length < 0 || i < CLI_LINE_LENGTH - CLI_LINE_TAB)
    {
      length = i;
    }

    cli_print_prefix (help, length);

    help += length;
    while (*help == ' ')
    {
      help++;
    }

    if (*help != 0)
    {
      printf ("\n");
      cli_print_pad (CLI_LINE_TAB);
    }
  }
}
