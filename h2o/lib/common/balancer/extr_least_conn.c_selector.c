
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint64_t ;
struct least_conn_t {int mutex; } ;
struct TYPE_9__ {size_t size; TYPE_3__** entries; } ;
typedef TYPE_4__ h2o_socketpool_target_vector_t ;
typedef int h2o_balancer_t ;
struct TYPE_7__ {scalar_t__ weight_m1; } ;
struct TYPE_6__ {size_t leased_count; } ;
struct TYPE_8__ {TYPE_2__ conf; TYPE_1__ _shared; } ;


 int assert (int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static size_t selector(h2o_balancer_t *_self, h2o_socketpool_target_vector_t *targets, char *tried)
{
    struct least_conn_t *self = (void *)_self;
    size_t i;
    size_t result_index = -1;
    size_t result_weight = 0;
    size_t result_leased = 1;
    uint64_t leftprod, rightprod;

    assert(targets->size != 0);
    pthread_mutex_lock(&self->mutex);
    for (i = 0; i < targets->size; i++) {
        leftprod = targets->entries[i]->_shared.leased_count;
        leftprod *= result_weight;
        rightprod = result_leased;
        rightprod *= ((unsigned)targets->entries[i]->conf.weight_m1) + 1;
        if (!tried[i] && leftprod < rightprod) {
            result_index = i;
            result_leased = targets->entries[i]->_shared.leased_count;
            result_weight = ((unsigned)targets->entries[i]->conf.weight_m1) + 1;
        }
    }
    pthread_mutex_unlock(&self->mutex);

    assert(result_index < targets->size);
    return result_index;
}
