
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {size_t size; TYPE_3__** entries; } ;
typedef TYPE_4__ h2o_socketpool_target_vector_t ;
typedef int h2o_balancer_t ;
struct TYPE_10__ {int leased_count; } ;
struct TYPE_9__ {size_t weight_m1; } ;
struct TYPE_11__ {TYPE_2__ _shared; TYPE_1__ conf; } ;


 int check_if_acceptable (TYPE_4__*,size_t) ;
 int destroy (int *) ;
 int free_targets (TYPE_4__*) ;
 TYPE_4__ gen_targets (int) ;
 int * h2o_balancer_create_lc () ;
 int ok (int) ;
 size_t selector (int *,TYPE_4__*,char*) ;

__attribute__((used)) static void test_least_conn_weighted(void)
{
    h2o_socketpool_target_vector_t targets = gen_targets(10);
    size_t i, selected;
    char tried[10] = {0};
    int check_result = 1;
    h2o_balancer_t *balancer;

    balancer = h2o_balancer_create_lc();

    for (i = 0; i < 10; i++)
        targets.entries[i]->conf.weight_m1 = i % 3;

    for (i = 0; i < 10000; i++) {
        selected = selector(balancer, &targets, tried);
        if (selected > 10) {
            ok(selected >= 0 && selected < targets.size);
            goto Done;
        }
        check_result = check_if_acceptable(&targets, selected);
        if (check_result == -1) {
            ok(!check_result);
            goto Done;
        }
        targets.entries[selected]->_shared.leased_count++;
    }
    ok(!check_result);

Done:
    free_targets(&targets);
    destroy(balancer);
}
