
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int h2o_timerwheel_t ;
typedef int h2o_timerwheel_entry_t ;


 int DUMP_WHEEL (int *) ;
 int N ;
 int * h2o_timerwheel_create (int,int) ;
 int h2o_timerwheel_destroy (int *) ;
 int h2o_timerwheel_init_entry (int *,int ) ;
 int h2o_timerwheel_link_abs (int *,int *,int) ;
 int h2o_timerwheel_run (int *,int) ;
 int invokes ;
 int lcg_rand () ;
 int my_callback ;
 int ok (int) ;

void test_add_rand_timers()
{
    uint32_t abs_wtime = 3;
    h2o_timerwheel_t *testwheel = h2o_timerwheel_create(6, abs_wtime);
    h2o_timerwheel_entry_t timers[N];
    int i;


    for (i = 0; i < N; i++) {
        uint32_t expiry = abs_wtime + lcg_rand() % N;
        h2o_timerwheel_init_entry(&timers[i], my_callback);
        h2o_timerwheel_link_abs(testwheel, &timers[i], expiry);
    }

    int start = invokes;

    ok(h2o_timerwheel_run(testwheel, N - 1 + abs_wtime) == N);
    ok(invokes - start == N);
    DUMP_WHEEL(testwheel);

    h2o_timerwheel_destroy(testwheel);
}
