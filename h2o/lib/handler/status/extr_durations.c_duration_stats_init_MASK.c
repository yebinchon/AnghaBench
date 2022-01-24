#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct st_duration_stats_t {int /*<<< orphan*/  evloop_latency_nanosec; void* total_time; void* response_time; void* process_time; void* request_total_time; void* body_time; void* header_time; void* connect_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  GK_EPSILON ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct st_duration_stats_t *stats)
{
    stats->connect_time = FUNC0(GK_EPSILON);
    stats->header_time = FUNC0(GK_EPSILON);
    stats->body_time = FUNC0(GK_EPSILON);
    stats->request_total_time = FUNC0(GK_EPSILON);
    stats->process_time = FUNC0(GK_EPSILON);
    stats->response_time = FUNC0(GK_EPSILON);
    stats->total_time = FUNC0(GK_EPSILON);
    FUNC1(&stats->evloop_latency_nanosec, 0, sizeof(stats->evloop_latency_nanosec));
}