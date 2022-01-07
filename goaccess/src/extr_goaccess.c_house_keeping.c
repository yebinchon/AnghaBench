
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_7__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ debug_log; scalar_t__ invalid_requests_log; int output_stdout; scalar_t__ list_agents; } ;
struct TYPE_8__ {scalar_t__ pipe; } ;


 int LOG_DEBUG (char*) ;
 TYPE_7__ conf ;
 scalar_t__ dash ;
 int dbg_log_close () ;
 int fclose (scalar_t__) ;
 int free (TYPE_1__*) ;
 int free_agent_list () ;
 int free_browsers_hash () ;
 int free_cmd_args () ;
 int free_color_lists () ;
 int free_dashboard (scalar_t__) ;
 int free_formats () ;
 int free_logerrors (TYPE_1__*) ;
 int geoip_free () ;
 TYPE_1__* glog ;
 TYPE_1__* gwsreader ;
 TYPE_1__* gwswriter ;
 int house_keeping_holder () ;
 int invalid_log_close () ;
 TYPE_1__* parsing_spinner ;
 int reset_find () ;

__attribute__((used)) static void
house_keeping (void)
{






  house_keeping_holder ();


  if (dash && !conf.output_stdout) {
    free_dashboard (dash);
    reset_find ();
  }







  if (glog->pipe)
    fclose (glog->pipe);
  free_logerrors (glog);
  free (glog);


  if (conf.invalid_requests_log) {
    LOG_DEBUG (("Closing invalid requests log.\n"));
    invalid_log_close ();
  }


  free_formats ();
  free_browsers_hash ();
  if (conf.debug_log) {
    LOG_DEBUG (("Bye.\n"));
    dbg_log_close ();
  }


  free (parsing_spinner);

  free_color_lists ();

  free_cmd_args ();

  free (gwswriter);

  free (gwsreader);
}
