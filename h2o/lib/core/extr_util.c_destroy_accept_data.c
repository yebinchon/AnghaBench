
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_h2o_accept_data_t {int timeout; } ;


 int free (struct st_h2o_accept_data_t*) ;
 int h2o_timer_unlink (int *) ;

__attribute__((used)) static void destroy_accept_data(struct st_h2o_accept_data_t *data)
{
    h2o_timer_unlink(&data->timeout);
    free(data);
}
