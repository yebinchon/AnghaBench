
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int processed; int offset; int invalid; int piping; int resp_size; } ;
typedef int FILE ;


 int fprintf (int *,char*,int,...) ;
 int getpid () ;
 TYPE_1__* log_data ;

__attribute__((used)) static void
dump_struct (FILE * fp)
{
  int pid = getpid ();
  if (!log_data)
    return;

  fprintf (fp, "==%d== VALUES AT CRASH POINT\n", pid);
  fprintf (fp, "==%d==\n", pid);
  fprintf (fp, "==%d== Line number: %u\n", pid, log_data->processed);
  fprintf (fp, "==%d== Offset: %u\n", pid, log_data->offset);
  fprintf (fp, "==%d== Invalid data: %u\n", pid, log_data->invalid);
  fprintf (fp, "==%d== Piping: %d\n", pid, log_data->piping);
  fprintf (fp, "==%d== Response size: %llu bytes\n", pid, log_data->resp_size);
  fprintf (fp, "==%d==\n", pid);
}
