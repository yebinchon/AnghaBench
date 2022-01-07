
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ output_stdout; scalar_t__ process_and_exit; scalar_t__ stop_processing; } ;
struct TYPE_4__ {int processed; int offset; } ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int allocate_holder () ;
 int block_thread_signals () ;
 int cleanup (int) ;
 TYPE_3__ conf ;
 int curses_output () ;
 int end_proc ;
 int end_spinner () ;
 int gdns_init () ;
 TYPE_1__* glog ;
 int init_processing () ;
 int initializer () ;
 int parse_cmd_line (int,char**) ;
 int parse_conf_file (int*,char***) ;
 int parse_initial_sort () ;
 int parse_log (TYPE_1__**,int *,int ) ;
 int set_accumulated_time () ;
 int set_curses (int*) ;
 int set_standard_output () ;
 int setup_signal_handlers () ;
 int standard_output () ;
 int start_proc ;
 int time (int *) ;
 int verify_global_config (int,char**) ;

int
main (int argc, char **argv)
{
  int quit = 0, ret = 0;

  block_thread_signals ();
  setup_signal_handlers ();


  verify_global_config (argc, argv);
  parse_conf_file (&argc, &argv);
  parse_cmd_line (argc, argv);

  initializer ();


  if (conf.process_and_exit) {
  }

  else if (conf.output_stdout) {
    set_standard_output ();
  }

  else {
    set_curses (&quit);
  }


  if (quit)
    goto clean;

  init_processing ();

  time (&start_proc);
  if ((ret = parse_log (&glog, ((void*)0), 0))) {
    end_spinner ();
    goto clean;
  }
  if (conf.stop_processing)
    goto clean;
  glog->offset = glog->processed;


  gdns_init ();
  parse_initial_sort ();
  allocate_holder ();

  end_spinner ();
  time (&end_proc);


  if (conf.process_and_exit) {



  }

  else if (conf.output_stdout) {
    standard_output ();
  }

  else {
    curses_output ();
  }


clean:
  cleanup(ret);

  return ret ? EXIT_FAILURE : EXIT_SUCCESS;
}
