
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stop_processing; int output_stdout; } ;


 int EXIT_SUCCESS ;



 int cleanup (int ) ;
 TYPE_1__ conf ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int gwsreader ;
 int gwswriter ;
 int stderr ;
 int stop_ws_server (int ,int ) ;

__attribute__((used)) static void
handle_signal_action (int sig_number)
{
  switch (sig_number) {
  case 128:
  case 130:
    fprintf (stderr, "\nSIGINT caught!\n");
    fprintf (stderr, "Closing GoAccess...\n");

    stop_ws_server (gwswriter, gwsreader);
    conf.stop_processing = 1;

    if (!conf.output_stdout) {
      cleanup(EXIT_SUCCESS);
      exit(EXIT_SUCCESS);
    }

    break;
  case 129:
    fprintf (stderr, "SIGPIPE caught!\n");

    break;
  }
}
