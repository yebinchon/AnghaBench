
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_duration_stats_t {int evloop_latency_nanosec; void* total_time; void* response_time; void* process_time; void* request_total_time; void* body_time; void* header_time; void* connect_time; } ;


 int GK_EPSILON ;
 void* gkc_summary_alloc (int ) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void duration_stats_init(struct st_duration_stats_t *stats)
{
    stats->connect_time = gkc_summary_alloc(GK_EPSILON);
    stats->header_time = gkc_summary_alloc(GK_EPSILON);
    stats->body_time = gkc_summary_alloc(GK_EPSILON);
    stats->request_total_time = gkc_summary_alloc(GK_EPSILON);
    stats->process_time = gkc_summary_alloc(GK_EPSILON);
    stats->response_time = gkc_summary_alloc(GK_EPSILON);
    stats->total_time = gkc_summary_alloc(GK_EPSILON);
    memset(&stats->evloop_latency_nanosec, 0, sizeof(stats->evloop_latency_nanosec));
}
