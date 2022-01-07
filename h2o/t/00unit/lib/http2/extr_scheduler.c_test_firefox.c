
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
struct TYPE_9__ {char* member_1; int member_2; TYPE_4__ ref; scalar_t__ still_is_active; int member_3; TYPE_1__ member_0; } ;
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

__attribute__((used)) static void test_firefox(void)
{
    h2o_http2_scheduler_node_t root;
    node_t g1 = {{{((void*)0)}}, "g1", 0, 0};
    node_t g2 = {{{((void*)0)}}, "g2", 0, 0};
    node_t g3 = {{{((void*)0)}}, "g3", 0, 0};
    node_t g4 = {{{((void*)0)}}, "g4", 0, 0};
    node_t g5 = {{{((void*)0)}}, "g5", 0, 0};
    node_t r1 = {{{((void*)0)}}, "r1", 1, 0};
    node_t r2 = {{{((void*)0)}}, "r2", 1, 0};
    node_t r3 = {{{((void*)0)}}, "r3", 1, 0};

    h2o_http2_scheduler_init(&root);


    h2o_http2_scheduler_open(&g1.ref, &root, 201, 0);
    h2o_http2_scheduler_open(&g2.ref, &root, 101, 0);
    h2o_http2_scheduler_open(&g3.ref, &root, 1, 0);
    h2o_http2_scheduler_open(&g4.ref, &g3.ref.node, 1, 0);
    h2o_http2_scheduler_open(&g5.ref, &g1.ref.node, 1, 0);


    h2o_http2_scheduler_open(&r1.ref, &g5.ref.node, 22, 0);
    h2o_http2_scheduler_activate(&r1.ref);
    output[0] = '\0';
    max_cnt = 5;
    h2o_http2_scheduler_run(&root, iterate_cb, ((void*)0));
    ok(strcmp(output, "r1,r1,r1,r1,r1") == 0);


    h2o_http2_scheduler_open(&r2.ref, &g1.ref.node, 22, 0);
    h2o_http2_scheduler_activate(&r2.ref);
    h2o_http2_scheduler_open(&r3.ref, &g1.ref.node, 22, 0);
    h2o_http2_scheduler_activate(&r3.ref);
    output[0] = '\0';
    max_cnt = 5;
    h2o_http2_scheduler_run(&root, iterate_cb, ((void*)0));
    ok(strcmp(output, "r2,r3,r2,r3,r2") == 0);


    r2.still_is_active = 0;
    r3.still_is_active = 0;
    output[0] = '\0';
    max_cnt = 5;
    h2o_http2_scheduler_run(&root, iterate_cb, ((void*)0));
    ok(strcmp(output, "r3,r2,r1,r1,r1") == 0);


    h2o_http2_scheduler_close(&r2.ref);
    h2o_http2_scheduler_close(&r3.ref);
    output[0] = '\0';
    max_cnt = 5;
    h2o_http2_scheduler_run(&root, iterate_cb, ((void*)0));
    ok(strcmp(output, "r1,r1,r1,r1,r1") == 0);

    h2o_http2_scheduler_close(&r1.ref);

    h2o_http2_scheduler_close(&g1.ref);
    h2o_http2_scheduler_close(&g2.ref);
    h2o_http2_scheduler_close(&g3.ref);
    h2o_http2_scheduler_close(&g4.ref);
    h2o_http2_scheduler_close(&g5.ref);
    h2o_http2_scheduler_dispose(&root);
}
