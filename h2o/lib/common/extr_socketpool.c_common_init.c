
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int h2o_socketpool_target_t ;
struct TYPE_8__ {size_t size; int ** entries; } ;
struct TYPE_6__ {int sockets; int mutex; } ;
struct TYPE_7__ {size_t capacity; int timeout; int * balancer; TYPE_4__ targets; TYPE_1__ _shared; } ;
typedef TYPE_2__ h2o_socketpool_t ;
typedef int h2o_balancer_t ;


 int h2o_linklist_init_anchor (int *) ;
 int h2o_vector_reserve (int *,TYPE_4__*,size_t) ;
 int memset (TYPE_2__*,int ,int) ;
 int pthread_mutex_init (int *,int *) ;

__attribute__((used)) static void common_init(h2o_socketpool_t *pool, h2o_socketpool_target_t **targets, size_t num_targets, size_t capacity,
                        h2o_balancer_t *balancer)
{
    memset(pool, 0, sizeof(*pool));

    pool->capacity = capacity;
    pool->timeout = 2000;

    pthread_mutex_init(&pool->_shared.mutex, ((void*)0));
    h2o_linklist_init_anchor(&pool->_shared.sockets);

    h2o_vector_reserve(((void*)0), &pool->targets, num_targets);
    for (; pool->targets.size < num_targets; ++pool->targets.size)
        pool->targets.entries[pool->targets.size] = targets[pool->targets.size];

    pool->balancer = balancer;
}
