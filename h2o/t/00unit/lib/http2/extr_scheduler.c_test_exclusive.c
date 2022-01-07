
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * member_0; } ;
struct TYPE_4__ {TYPE_2__ member_0; } ;
struct TYPE_6__ {char* member_1; int member_2; int ref; scalar_t__ still_is_active; int member_3; TYPE_1__ member_0; } ;
typedef TYPE_3__ node_t ;
typedef int h2o_http2_scheduler_node_t ;


 int h2o_http2_scheduler_activate (int *) ;
 int h2o_http2_scheduler_close (int *) ;
 int h2o_http2_scheduler_dispose (int *) ;
 int h2o_http2_scheduler_init (int *) ;
 int h2o_http2_scheduler_open (int *,int *,int,int) ;
 int h2o_http2_scheduler_run (int *,int ,int *) ;
 int iterate_cb ;
 int max_cnt ;
 int ok (int) ;
 char* output ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void test_exclusive(void)
{
    h2o_http2_scheduler_node_t scheduler;
    node_t nodeA = {{{((void*)0)}}, "A", 1, 0};
    node_t nodeB = {{{((void*)0)}}, "B", 1, 0};
    node_t nodeC = {{{((void*)0)}}, "C", 1, 0};

    h2o_http2_scheduler_init(&scheduler);
    h2o_http2_scheduler_open(&nodeA.ref, &scheduler, 32, 0);
    h2o_http2_scheduler_activate(&nodeA.ref);
    h2o_http2_scheduler_open(&nodeB.ref, &scheduler, 32, 0);
    h2o_http2_scheduler_activate(&nodeB.ref);

    output[0] = '\0';
    max_cnt = 5;
    h2o_http2_scheduler_run(&scheduler, iterate_cb, ((void*)0));
    ok(strcmp(output, "A,B,A,B,A") == 0);


    h2o_http2_scheduler_open(&nodeC.ref, &scheduler, 12, 1);


    output[0] = '\0';
    max_cnt = 5;
    h2o_http2_scheduler_run(&scheduler, iterate_cb, ((void*)0));
    ok(strcmp(output, "A,B,A,B,A") == 0);


    h2o_http2_scheduler_activate(&nodeC.ref);
    output[0] = '\0';
    max_cnt = 5;
    h2o_http2_scheduler_run(&scheduler, iterate_cb, ((void*)0));
    ok(strcmp(output, "C,C,C,C,C") == 0);


    nodeC.still_is_active = 0;
    output[0] = '\0';
    max_cnt = 5;
    h2o_http2_scheduler_run(&scheduler, iterate_cb, ((void*)0));
    ok(strcmp(output, "C,B,A,B,A") == 0);

    h2o_http2_scheduler_close(&nodeA.ref);
    h2o_http2_scheduler_close(&nodeB.ref);
    h2o_http2_scheduler_close(&nodeC.ref);
    h2o_http2_scheduler_dispose(&scheduler);
}
