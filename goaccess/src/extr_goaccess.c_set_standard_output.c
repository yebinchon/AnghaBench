
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ output_format_idx; scalar_t__ daemonize; scalar_t__ real_time_html; } ;
struct TYPE_5__ {int fd; } ;


 int LOG (char*) ;
 TYPE_4__ conf ;
 int daemonize () ;
 scalar_t__ find_output_type (int *,char*,int ) ;
 TYPE_1__* gwsreader ;
 int gwswriter ;
 TYPE_1__* new_gwsreader () ;
 int new_gwswriter () ;
 int open_fifoout () ;
 int parsing_spinner ;
 int setup_thread_signals () ;
 int setup_ws_server (int ,TYPE_1__*) ;
 int ui_spinner_create (int ) ;

__attribute__((used)) static void
set_standard_output (void)
{
  int html = 0;
  gwswriter = new_gwswriter ();
  gwsreader = new_gwsreader ();


  if (find_output_type (((void*)0), "html", 0) == 0 || conf.output_format_idx == 0)
    html = 1;


  if (html && conf.real_time_html) {

    if ((gwsreader->fd = open_fifoout ()) == -1) {
      LOG (("Unable to open FIFO for read.\n"));
      return;
    }

    if (conf.daemonize)
      daemonize ();
    setup_ws_server (gwswriter, gwsreader);
  }
  setup_thread_signals ();


  ui_spinner_create (parsing_spinner);
}
