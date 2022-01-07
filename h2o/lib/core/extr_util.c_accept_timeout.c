
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_h2o_accept_data_t {int * sock; } ;
typedef int h2o_socket_t ;
struct TYPE_2__ {int (* destroy ) (struct st_h2o_accept_data_t*) ;} ;


 TYPE_1__ accept_data_callbacks ;
 int h2o_socket_close (int *) ;
 int stub1 (struct st_h2o_accept_data_t*) ;

__attribute__((used)) static void accept_timeout(struct st_h2o_accept_data_t *data)
{

    h2o_socket_t *sock = data->sock;
    accept_data_callbacks.destroy(data);
    h2o_socket_close(sock);
}
