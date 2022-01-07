
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_cond_rand (int *,int,int) ;
 int loss_cond_down ;
 int loss_cond_up ;
 int loss_core ;
 int subtest (char*,int ) ;

__attribute__((used)) static void test_bidirectional(void)
{
    size_t i;

    for (i = 0; i != 100; ++i) {






        init_cond_rand(&loss_cond_down, 1, 2);
        init_cond_rand(&loss_cond_up, 1, 2);
        subtest("50%", loss_core);

        init_cond_rand(&loss_cond_down, 1, 4);
        init_cond_rand(&loss_cond_up, 1, 4);
        subtest("25%", loss_core);

        init_cond_rand(&loss_cond_down, 1, 10);
        init_cond_rand(&loss_cond_up, 1, 10);
        subtest("10%", loss_core);

        init_cond_rand(&loss_cond_down, 1, 20);
        init_cond_rand(&loss_cond_up, 1, 20);
        subtest("5%", loss_core);

        init_cond_rand(&loss_cond_down, 1, 40);
        init_cond_rand(&loss_cond_up, 1, 40);
        subtest("2.5%", loss_core);

        init_cond_rand(&loss_cond_down, 1, 64);
        init_cond_rand(&loss_cond_up, 1, 64);
        subtest("1.6%", loss_core);
    }
}
