
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_h2o_redis_resumption_accept_data_t {int super; int * get_command; } ;
struct st_h2o_accept_data_t {int dummy; } ;


 int assert (int ) ;
 int destroy_accept_data (int *) ;

__attribute__((used)) static void destroy_redis_accept_data(struct st_h2o_accept_data_t *_accept_data)
{
    struct st_h2o_redis_resumption_accept_data_t *accept_data = (struct st_h2o_redis_resumption_accept_data_t *)_accept_data;
    assert(accept_data->get_command == ((void*)0));
    destroy_accept_data(&accept_data->super);
}
