
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int priority_lists_requests_after_list_ending; } ;


 int cache_download_next_file () ;
 int cache_priority_lists_request () ;
 int next_priority_lists_request_time ;
 TYPE_1__ simulation_stats ;
 int vkprintf (int,char*,int) ;

__attribute__((used)) static void resend_priority_lists_request (int t) {
  vkprintf (2, "<%d> resend_priority_lists_request\n", t);
  next_priority_lists_request_time = t;
  simulation_stats.priority_lists_requests_after_list_ending++;
  cache_priority_lists_request ();
  cache_download_next_file ();
}
