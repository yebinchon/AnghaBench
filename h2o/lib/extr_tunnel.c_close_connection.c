
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_h2o_tunnel_t {int * sock; int timeout_entry; } ;


 int free (struct st_h2o_tunnel_t*) ;
 int h2o_socket_close (int ) ;
 int h2o_timer_unlink (int *) ;

__attribute__((used)) static void close_connection(struct st_h2o_tunnel_t *tunnel)
{
    h2o_timer_unlink(&tunnel->timeout_entry);

    h2o_socket_close(tunnel->sock[0]);
    h2o_socket_close(tunnel->sock[1]);

    free(tunnel);
}
