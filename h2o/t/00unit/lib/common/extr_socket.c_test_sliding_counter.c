
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int average; int member_0; } ;
typedef TYPE_1__ h2o_sliding_counter_t ;


 int h2o_sliding_counter_start (TYPE_1__*,int) ;
 int h2o_sliding_counter_stop (TYPE_1__*,int) ;
 int ok (int) ;

__attribute__((used)) static void test_sliding_counter(void)
{
    h2o_sliding_counter_t counter = {0};
    size_t i;

    h2o_sliding_counter_start(&counter, 100);
    h2o_sliding_counter_stop(&counter, 80 + 100);
    ok(counter.average == 10);

    for (i = 0; i != 7; ++i) {
        h2o_sliding_counter_start(&counter, 1);
        h2o_sliding_counter_stop(&counter, 81);
    }
    ok(counter.average == 80);

    h2o_sliding_counter_start(&counter, 1000);
    h2o_sliding_counter_stop(&counter, 1000 + 1000 * 8 - 80 * 7);
    ok(counter.average == 1000);

    for (i = 0; i != 8; ++i) {
        h2o_sliding_counter_start(&counter, 1);
        h2o_sliding_counter_stop(&counter, 11);
    }
    ok(counter.average == 10);
}
