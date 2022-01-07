
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_h2o_accept_data_t {int dummy; } ;


 int destroy_accept_data (struct st_h2o_accept_data_t*) ;

__attribute__((used)) static void destroy_default_accept_data(struct st_h2o_accept_data_t *_accept_data)
{
    destroy_accept_data(_accept_data);
}
