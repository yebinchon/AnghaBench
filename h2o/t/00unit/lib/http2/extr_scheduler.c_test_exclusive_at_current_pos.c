
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * member_0; } ;
struct TYPE_4__ {TYPE_2__ member_0; } ;
struct TYPE_6__ {char* member_1; int member_2; int ref; int member_3; TYPE_1__ member_0; } ;
typedef TYPE_3__ node_t ;
typedef int h2o_http2_scheduler_node_t ;


 int dump_tree (int *) ;
 int h2o_http2_scheduler_activate (int *) ;
 int h2o_http2_scheduler_close (int *) ;
 int h2o_http2_scheduler_dispose (int *) ;
 int h2o_http2_scheduler_init (int *) ;
 int h2o_http2_scheduler_open (int *,int *,int,int ) ;
 int h2o_http2_scheduler_rebind (int *,int *,int,int) ;
 int ok (int) ;
 char* output ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void test_exclusive_at_current_pos(void)
{
    h2o_http2_scheduler_node_t root;
    node_t nodeA = {{{((void*)0)}}, "A", 1, 0};
    node_t nodeB = {{{((void*)0)}}, "B", 1, 0};
    node_t nodeC = {{{((void*)0)}}, "C", 1, 0};

    h2o_http2_scheduler_init(&root);


    h2o_http2_scheduler_open(&nodeA.ref, &root, 16, 0);
    h2o_http2_scheduler_activate(&nodeA.ref);
    h2o_http2_scheduler_open(&nodeB.ref, &root, 16, 0);
    h2o_http2_scheduler_activate(&nodeB.ref);
    h2o_http2_scheduler_open(&nodeC.ref, &root, 16, 0);
    h2o_http2_scheduler_activate(&nodeC.ref);

    output[0] = '\0';
    dump_tree(&root);
    ok(strcmp(output, "(A16B16C16)") == 0);

    h2o_http2_scheduler_rebind(&nodeB.ref, &root, 1, 1);

    output[0] = '\0';
    dump_tree(&root);
    ok(strcmp(output, "(B1(A16C16))") == 0);

    h2o_http2_scheduler_close(&nodeA.ref);
    h2o_http2_scheduler_close(&nodeB.ref);
    h2o_http2_scheduler_close(&nodeC.ref);
    h2o_http2_scheduler_dispose(&root);
}
