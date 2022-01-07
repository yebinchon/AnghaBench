
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gengetopt_args_info {int entry_given; int load_addr_given; int chipid_given; int boardid_given; int output_given; int rootfs_given; int kernel_given; } ;


 int FIX_UNUSED (char const*) ;
 int fprintf (int ,char*,char const*,char const*) ;
 int stderr ;

int
imagetag_cmdline_required2 (struct gengetopt_args_info *args_info, const char *prog_name, const char *additional_error)
{
  int error = 0;
  FIX_UNUSED (additional_error);


  if (! args_info->kernel_given)
    {
      fprintf (stderr, "%s: '--kernel' ('-i') option required%s\n", prog_name, (additional_error ? additional_error : ""));
      error = 1;
    }

  if (! args_info->rootfs_given)
    {
      fprintf (stderr, "%s: '--rootfs' ('-f') option required%s\n", prog_name, (additional_error ? additional_error : ""));
      error = 1;
    }

  if (! args_info->output_given)
    {
      fprintf (stderr, "%s: '--output' ('-o') option required%s\n", prog_name, (additional_error ? additional_error : ""));
      error = 1;
    }

  if (! args_info->boardid_given)
    {
      fprintf (stderr, "%s: '--boardid' ('-b') option required%s\n", prog_name, (additional_error ? additional_error : ""));
      error = 1;
    }

  if (! args_info->chipid_given)
    {
      fprintf (stderr, "%s: '--chipid' ('-c') option required%s\n", prog_name, (additional_error ? additional_error : ""));
      error = 1;
    }

  if (! args_info->load_addr_given)
    {
      fprintf (stderr, "%s: '--load-addr' ('-l') option required%s\n", prog_name, (additional_error ? additional_error : ""));
      error = 1;
    }

  if (! args_info->entry_given)
    {
      fprintf (stderr, "%s: '--entry' ('-e') option required%s\n", prog_name, (additional_error ? additional_error : ""));
      error = 1;
    }




  return error;
}
