
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
typedef int h2o_http2_scheduler_queue_t ;
typedef int h2o_http2_scheduler_queue_node_t ;
struct TYPE_4__ {int * member_0; } ;
struct TYPE_3__ {TYPE_2__ member_0; } ;


 int ok (int) ;
 int queue_init (int *) ;
 scalar_t__ queue_pop (int *) ;
 int queue_set (int *,int *,int) ;

__attribute__((used)) static void test_queue(void)
{
    h2o_http2_scheduler_queue_t drr;
    struct node_t {
        h2o_http2_scheduler_queue_node_t super;
        uint16_t weight;
        size_t cnt;
    } w256 = {{{((void*)0)}}, 256}, w128 = {{{((void*)0)}}, 128}, w32 = {{{((void*)0)}}, 32}, w1 = {{{((void*)0)}}, 1};
    size_t i;

    queue_init(&drr);
    queue_set(&drr, &w256.super, 256);
    queue_set(&drr, &w128.super, 128);
    queue_set(&drr, &w32.super, 32);
    queue_set(&drr, &w1.super, 1);

    for (i = 0; i != (256 + 128 + 32 + 1) * 100; ++i) {
        struct node_t *popped = (struct node_t *)queue_pop(&drr);
        if (popped == ((void*)0)) {
            ok(0);
            return;
        }
        ++popped->cnt;
        queue_set(&drr, &popped->super, popped->weight);
    }

    ok(w256.cnt == 25600);
    ok(w128.cnt == 12800);
    ok(w32.cnt == 3200);
    ok(w1.cnt == 100);
}
