
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ size; int entries; } ;
struct TYPE_4__ {int sending; TYPE_1__ bufs; } ;
struct st_h2o_http1_finalostream_t {TYPE_2__ informational; } ;
typedef int h2o_socket_t ;


 int h2o_socket_write (int *,int ,scalar_t__,int ) ;
 int on_send_informational ;

__attribute__((used)) static void do_send_informational(struct st_h2o_http1_finalostream_t *self, h2o_socket_t *sock)
{
    if (self->informational.sending || self->informational.bufs.size == 0)
        return;

    self->informational.sending = 1;
    h2o_socket_write(sock, self->informational.bufs.entries, self->informational.bufs.size, on_send_informational);
    self->informational.bufs.size = 0;
}
