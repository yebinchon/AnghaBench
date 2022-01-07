
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int is_404; int is_static; int resp_size; int uniq_key; int req; int * agent; } ;
typedef TYPE_1__ GLogItem ;
typedef int GLog ;


 int IGNORE_LEVEL_PANEL ;
 int IGNORE_LEVEL_REQ ;
 int * alloc_string (char*) ;
 int count_invalid (int *,char*) ;
 int count_process (int *) ;
 int count_valid (int *) ;
 int free_glog (TYPE_1__*) ;
 int get_uniq_visitor_key (TYPE_1__*) ;
 int ignore_line (int *,TYPE_1__*) ;
 int inc_resp_size (int *,int ) ;
 TYPE_1__* init_log_item (int *) ;
 scalar_t__ is_404 (TYPE_1__*) ;
 scalar_t__ is_static (int ) ;
 scalar_t__ parse_format (TYPE_1__*,char*) ;
 int process_log (TYPE_1__*) ;
 scalar_t__ valid_line (char*) ;
 scalar_t__ verify_missing_fields (TYPE_1__*) ;

__attribute__((used)) static int
pre_process_log (GLog * glog, char *line, int dry_run)
{
  GLogItem *logitem;
  int ret = 0;
  int ignorelevel = 0;


  if (valid_line (line))
    return -1;

  count_process (glog);
  logitem = init_log_item (glog);

  if (parse_format (logitem, line) || verify_missing_fields (logitem)) {
    ret = 1;
    count_invalid (glog, line);
    goto cleanup;
  }


  if (logitem->agent == ((void*)0))
    logitem->agent = alloc_string ("-");


  if (dry_run)
    goto cleanup;

  ignorelevel = ignore_line (glog, logitem);

  if (ignorelevel == IGNORE_LEVEL_PANEL)
    goto cleanup;

  if (is_404 (logitem))
    logitem->is_404 = 1;
  else if (is_static (logitem->req))
    logitem->is_static = 1;

  logitem->uniq_key = get_uniq_visitor_key (logitem);

  inc_resp_size (glog, logitem->resp_size);
  process_log (logitem);


  if (ignorelevel != IGNORE_LEVEL_REQ)
    count_valid (glog);

cleanup:
  free_glog (logitem);

  return ret;
}
