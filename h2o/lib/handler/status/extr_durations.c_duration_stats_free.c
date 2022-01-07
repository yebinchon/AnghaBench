
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entries; } ;
struct st_duration_stats_t {TYPE_1__ evloop_latency_nanosec; int total_time; int response_time; int process_time; int request_total_time; int body_time; int header_time; int connect_time; } ;


 int free (int ) ;
 int gkc_summary_free (int ) ;

__attribute__((used)) static void duration_stats_free(struct st_duration_stats_t *stats)
{
    gkc_summary_free(stats->connect_time);
    gkc_summary_free(stats->header_time);
    gkc_summary_free(stats->body_time);
    gkc_summary_free(stats->request_total_time);
    gkc_summary_free(stats->process_time);
    gkc_summary_free(stats->response_time);
    gkc_summary_free(stats->total_time);
    free(stats->evloop_latency_nanosec.entries);
}
