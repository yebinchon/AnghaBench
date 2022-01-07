
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_socketpool_target_vector_t ;
typedef int h2o_balancer_t ;


 int destroy (int *) ;
 int free_targets (int *) ;
 int gen_targets (int) ;
 int * h2o_balancer_create_rr () ;
 int ok (int) ;
 size_t selector (int *,int *,char*) ;

__attribute__((used)) static void test_when_backend_down(void)
{
    h2o_socketpool_target_vector_t targets = gen_targets(10);
    char tried[10] = {0};
    size_t i;
    size_t selected;
    h2o_balancer_t *balancer;

    balancer = h2o_balancer_create_rr();

    for (i = 0; i < 10; i++) {
        selected = selector(balancer, &targets, tried);
        ok(selected >= 0 && selected < 10);
        ok(!tried[selected]);
        tried[selected] = 1;
    }

    destroy(balancer);

    free_targets(&targets);
}
