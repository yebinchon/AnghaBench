
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cli_help (char*,int *,int ) ;
 int main_opts ;
 int printf (char*) ;

__attribute__((used)) static void
print_commands (char *prog_name_p)
{
  cli_help (prog_name_p, ((void*)0), main_opts);

  printf ("\nAvailable commands:\n"
          "  generate\n"
          "  litdump\n"
          "  merge\n"
          "\nPassing -h or --help after a command displays its help.\n");
}
