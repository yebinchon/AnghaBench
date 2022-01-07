
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct round_robin_t {size_t pos; scalar_t__ consumed_weight; int mutex; } ;
struct TYPE_8__ {size_t size; TYPE_2__** entries; } ;
typedef TYPE_3__ h2o_socketpool_target_vector_t ;
typedef int h2o_balancer_t ;
struct TYPE_6__ {scalar_t__ weight_m1; } ;
struct TYPE_7__ {TYPE_1__ conf; } ;


 int assert (int) ;
 int h2o_fatal (char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int select_next (struct round_robin_t*,TYPE_3__*) ;

__attribute__((used)) static size_t selector(h2o_balancer_t *balancer, h2o_socketpool_target_vector_t *targets, char *tried)
{
    size_t i;
    size_t result = 0;
    struct round_robin_t *self = (void *)balancer;

    pthread_mutex_lock(&self->mutex);

    assert(targets->size != 0);
    for (i = 0; i < targets->size; i++) {
        if (!tried[self->pos]) {

            result = self->pos;
            if (++self->consumed_weight > targets->entries[self->pos]->conf.weight_m1)
                select_next(self, targets);
            pthread_mutex_unlock(&self->mutex);
            return result;
        } else {
            select_next(self, targets);
        }
    }
    h2o_fatal("unreachable");
}
