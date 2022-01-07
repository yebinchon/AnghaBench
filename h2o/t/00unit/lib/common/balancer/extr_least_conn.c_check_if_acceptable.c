
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {size_t size; TYPE_3__** entries; } ;
typedef TYPE_4__ h2o_socketpool_target_vector_t ;
struct TYPE_6__ {scalar_t__ weight_m1; } ;
struct TYPE_7__ {double leased_count; } ;
struct TYPE_8__ {TYPE_1__ conf; TYPE_2__ _shared; } ;



__attribute__((used)) static int check_if_acceptable(h2o_socketpool_target_vector_t *targets, size_t selected)
{
    double conn_weight_quotient;
    size_t i;
    double selected_conn_weight_quotient = targets->entries[selected]->_shared.leased_count;
    selected_conn_weight_quotient /= ((int)targets->entries[selected]->conf.weight_m1) + 1;

    for (i = 0; i < targets->size; i++) {
        if (i == selected)
            continue;
        conn_weight_quotient = targets->entries[i]->_shared.leased_count;
        conn_weight_quotient /= ((unsigned)targets->entries[i]->conf.weight_m1) + 1;
        if (conn_weight_quotient < selected_conn_weight_quotient) {
            return -1;
        }
    }

    return 0;
}
