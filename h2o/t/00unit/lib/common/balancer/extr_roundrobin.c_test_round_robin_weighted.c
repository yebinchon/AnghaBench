
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


 int check_weight_distribution (TYPE_4__*) ;
 int destroy (int *) ;
 int free_targets (TYPE_4__*) ;
 TYPE_4__ gen_targets (int) ;
 int * h2o_balancer_create_rr () ;
 int ok (int) ;
 size_t selector (int *,TYPE_4__*,char*) ;

__attribute__((used)) static void test_round_robin_weighted(void)
{
    h2o_socketpool_target_vector_t targets = gen_targets(10);
    size_t i, selected;
    size_t last_selected = 0;
    size_t total_count = 0;
    char tried[10] = {0};
    int check_result = 1;
    h2o_balancer_t *balancer;

    for (i = 0; i < 10; i++)
        targets.entries[i]->conf.weight_m1 = i % 3;
    balancer = h2o_balancer_create_rr();

    for (i = 0; i < targets.size; i++)
        total_count += ((unsigned)targets.entries[i]->conf.weight_m1) + 1;
    total_count *= 1000;

    for (i = 0; i < total_count; i++) {
        selected = selector(balancer, &targets, tried);
        if (selected > targets.size) {
            ok(selected >= 0 && selected < targets.size);
            goto Done;
        }
        check_result = selected >= last_selected || (last_selected == targets.size - 1 && selected == 0);
        if (!check_result) {
            ok(check_result);
            goto Done;
        }
        targets.entries[selected]->_shared.leased_count++;
        last_selected = selected;
    }
    ok(check_weight_distribution(&targets));

Done:
    destroy(balancer);
    free_targets(&targets);
}
