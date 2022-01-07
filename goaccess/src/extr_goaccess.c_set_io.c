
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ output_format_idx; int output_stdout; int load_from_disk; int read_stdin; int filenames_idx; } ;


 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int cmd_help () ;
 TYPE_1__ conf ;
 int isatty (int ) ;
 int set_pipe_stdin () ;

__attribute__((used)) static void
set_io (void)
{


  if (!isatty (STDOUT_FILENO) || conf.output_format_idx > 0)
    conf.output_stdout = 1;

  if (!isatty (STDIN_FILENO))
    set_pipe_stdin ();

  if (!conf.filenames_idx && !conf.read_stdin && !conf.load_from_disk)
    cmd_help ();
}
