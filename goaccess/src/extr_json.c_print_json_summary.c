
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ json_pretty_print; } ;
typedef int GLog ;
typedef int GJSON ;
typedef int GHolder ;


 int GENER_ID ;
 TYPE_1__ conf ;
 scalar_t__ num_panels () ;
 int pclose_obj (int *,int,int) ;
 int popen_obj_attr (int *,int ,int) ;
 int poverall_bandwidth (int *,int *,int) ;
 int poverall_datetime (int *,int) ;
 int poverall_excluded (int *,int *,int) ;
 int poverall_files (int *,int) ;
 int poverall_invalid_reqs (int *,int *,int) ;
 int poverall_log (int *,int) ;
 int poverall_log_size (int *,int) ;
 int poverall_notfound (int *,int) ;
 int poverall_processed_time (int *,int) ;
 int poverall_refs (int *,int) ;
 int poverall_requests (int *,int *,int) ;
 int poverall_start_end_date (int *,int *,int) ;
 int poverall_static_files (int *,int) ;
 int poverall_valid_reqs (int *,int *,int) ;
 int poverall_visitors (int *,int) ;

__attribute__((used)) static void
print_json_summary (GJSON * json, GLog * glog, GHolder * holder)
{
  int sp = 0, isp = 0;


  if (conf.json_pretty_print)
    sp = 1, isp = 2;

  popen_obj_attr (json, GENER_ID, sp);

  poverall_start_end_date (json, holder, isp);

  poverall_datetime (json, isp);

  poverall_requests (json, glog, isp);

  poverall_valid_reqs (json, glog, isp);

  poverall_invalid_reqs (json, glog, isp);

  poverall_processed_time (json, isp);

  poverall_visitors (json, isp);

  poverall_files (json, isp);

  poverall_excluded (json, glog, isp);

  poverall_refs (json, isp);

  poverall_notfound (json, isp);

  poverall_static_files (json, isp);

  poverall_log_size (json, isp);

  poverall_bandwidth (json, glog, isp);

  poverall_log (json, isp);
  pclose_obj (json, sp, num_panels () > 0 ? 0 : 1);
}
