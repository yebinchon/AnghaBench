
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int h2o_timerwheel_t ;
typedef int h2o_timerwheel_entry_t ;


 int * h2o_timerwheel_create (int,int const) ;
 int h2o_timerwheel_destroy (int *) ;
 int h2o_timerwheel_init_entry (int *,int ) ;
 int h2o_timerwheel_link_abs (int *,int *,int const) ;
 int h2o_timerwheel_run (int *,int const) ;
 int invokes ;
 int my_callback ;
 int ok (int) ;

__attribute__((used)) static void test_multiple_cascade_in_sparse_wheels(void)
{
    const uint64_t base_time = 0x1659418c000;
    h2o_timerwheel_t *ctx = h2o_timerwheel_create(3, base_time - 2048);
    h2o_timerwheel_entry_t t1, t2;

    invokes = 0;

    h2o_timerwheel_init_entry(&t1, my_callback);
    h2o_timerwheel_link_abs(ctx, &t1, base_time);

    h2o_timerwheel_run(ctx, base_time - 100);
    ok(invokes == 0);

    h2o_timerwheel_init_entry(&t2, my_callback);
    h2o_timerwheel_link_abs(ctx, &t2, base_time);

    h2o_timerwheel_run(ctx, base_time - 100);
    ok(invokes == 0);

    h2o_timerwheel_run(ctx, base_time);
    ok(invokes == 2);

    h2o_timerwheel_run(ctx, base_time + 1024);

    h2o_timerwheel_destroy(ctx);
}
