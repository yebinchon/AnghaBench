
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int node; } ;
struct TYPE_8__ {int * member_0; } ;
struct TYPE_7__ {TYPE_2__ member_0; } ;
struct TYPE_9__ {char* member_1; int member_2; int still_is_active; TYPE_4__ ref; int member_3; TYPE_1__ member_0; } ;
typedef TYPE_3__ node_t ;
typedef int h2o_http2_scheduler_node_t ;


 int h2o_http2_scheduler_activate (TYPE_4__*) ;
 int h2o_http2_scheduler_close (TYPE_4__*) ;
 int h2o_http2_scheduler_dispose (int *) ;
 int h2o_http2_scheduler_init (int *) ;
 int h2o_http2_scheduler_open (TYPE_4__*,int *,int,int ) ;
 int h2o_http2_scheduler_run (int *,int ,int *) ;
 int iterate_cb ;
 int max_cnt ;
 int ok (int) ;
 char* output ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void test_dependency(void)
{
    h2o_http2_scheduler_node_t root;
    node_t nodeA = {{{((void*)0)}}, "A", 1, 0};
    node_t nodeB = {{{((void*)0)}}, "B", 1, 0};
    node_t nodeC = {{{((void*)0)}}, "C", 1, 0};
    node_t nodeD = {{{((void*)0)}}, "D", 1, 0};
    h2o_http2_scheduler_init(&root);
    h2o_http2_scheduler_open(&nodeA.ref, &root, 32, 0);
    h2o_http2_scheduler_activate(&nodeA.ref);
    h2o_http2_scheduler_open(&nodeB.ref, &root, 32, 0);
    h2o_http2_scheduler_activate(&nodeB.ref);
    h2o_http2_scheduler_open(&nodeC.ref, &root, 12, 0);
    h2o_http2_scheduler_activate(&nodeC.ref);
    h2o_http2_scheduler_open(&nodeD.ref, &nodeA.ref.node, 6, 0);
    h2o_http2_scheduler_activate(&nodeD.ref);


    output[0] = '\0';
    max_cnt = 20;
    h2o_http2_scheduler_run(&root, iterate_cb, ((void*)0));
    ok(strcmp(output, "A,B,A,B,C,A,B,A,B,A,B,C,A,B,A,B,C,A,B,A") == 0);


    nodeA.still_is_active = 0;
    output[0] = '\0';
    max_cnt = 20;
    h2o_http2_scheduler_run(&root, iterate_cb, ((void*)0));
    ok(strcmp(output, "B,A,B,C,D,B,D,B,D,B,C,D,B,D,B,C,D,B,D,B") == 0);


    nodeB.still_is_active = 0;
    output[0] = '\0';
    max_cnt = 20;
    h2o_http2_scheduler_run(&root, iterate_cb, ((void*)0));
    ok(strcmp(output, "D,B,C,D,D,D,C,D,D,C,D,D,D,C,D,D,C,D,D,D") == 0);


    h2o_http2_scheduler_close(&nodeA.ref);
    h2o_http2_scheduler_activate(&nodeB.ref);
    nodeB.still_is_active = 1;
    output[0] = '\0';
    max_cnt = 20;
    h2o_http2_scheduler_run(&root, iterate_cb, ((void*)0));
    ok(strcmp(output, "D,C,B,D,B,D,B,C,D,B,D,B,D,C,B,D,B,D,B,C") == 0);

    h2o_http2_scheduler_close(&nodeB.ref);
    h2o_http2_scheduler_close(&nodeC.ref);
    h2o_http2_scheduler_close(&nodeD.ref);
    h2o_http2_scheduler_dispose(&root);
}
