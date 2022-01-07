
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
struct TYPE_9__ {char* member_1; TYPE_4__ ref; TYPE_1__ member_0; } ;
typedef TYPE_3__ node_t ;
typedef int h2o_http2_scheduler_node_t ;


 int dump_tree (int *) ;
 int h2o_http2_scheduler_close (TYPE_4__*) ;
 int h2o_http2_scheduler_dispose (int *) ;
 int h2o_http2_scheduler_init (int *) ;
 int h2o_http2_scheduler_open (TYPE_4__*,int *,int,int ) ;
 int h2o_http2_scheduler_rebind (TYPE_4__*,int *,int,int ) ;
 int ok (int) ;
 char* output ;
 scalar_t__ strcmp (char*,char*) ;
 int test_reprioritize_exclusive ;

__attribute__((used)) static void test_reprioritize(void)
{
    h2o_http2_scheduler_node_t root;
    node_t a = {{{((void*)0)}}, "A"};
    node_t b = {{{((void*)0)}}, "B"};
    node_t c = {{{((void*)0)}}, "C"};
    node_t d = {{{((void*)0)}}, "D"};
    node_t e = {{{((void*)0)}}, "E"};
    node_t f = {{{((void*)0)}}, "F"};

    h2o_http2_scheduler_init(&root);
    h2o_http2_scheduler_open(&a.ref, &root, 6, 0);
    h2o_http2_scheduler_open(&b.ref, &a.ref.node, 5, 0);
    h2o_http2_scheduler_open(&c.ref, &a.ref.node, 4, 0);
    h2o_http2_scheduler_open(&d.ref, &c.ref.node, 3, 0);
    h2o_http2_scheduler_open(&e.ref, &c.ref.node, 2, 0);
    h2o_http2_scheduler_open(&f.ref, &d.ref.node, 1, 0);

    output[0] = '\0';
    dump_tree(&root);
    ok(strcmp(output, "(A6(B5C4(D3(F1)E2)))") == 0);

    h2o_http2_scheduler_rebind(&a.ref, &d.ref.node, 1, test_reprioritize_exclusive);
    output[0] = '\0';
    dump_tree(&root);
    if (!test_reprioritize_exclusive) {
        ok(strcmp(output, "(D3(F1A1(B5C4(E2))))") == 0);
    } else {
        ok(strcmp(output, "(D3(A1(B5C4(E2)F1)))") == 0);
    }

    h2o_http2_scheduler_close(&a.ref);
    h2o_http2_scheduler_close(&b.ref);
    h2o_http2_scheduler_close(&c.ref);
    h2o_http2_scheduler_close(&d.ref);
    h2o_http2_scheduler_close(&e.ref);
    h2o_http2_scheduler_close(&f.ref);
    h2o_http2_scheduler_dispose(&root);
}
