
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pool; int bufs; } ;
struct st_h2o_socket_ssl_t {TYPE_1__ output; } ;


 int h2o_mem_clear_pool (int *) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void clear_output_buffer(struct st_h2o_socket_ssl_t *ssl)
{
    memset(&ssl->output.bufs, 0, sizeof(ssl->output.bufs));
    h2o_mem_clear_pool(&ssl->output.pool);
}
