
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ cnt; TYPE_4__* bufs; } ;
struct TYPE_5__ {int * write; } ;
struct TYPE_6__ {TYPE_1__ _cb; } ;
struct st_h2o_evloop_socket_t {int _flags; TYPE_3__ _wreq; int fd; TYPE_2__ super; } ;
struct TYPE_8__ {size_t base; size_t len; } ;


 int H2O_SOCKET_FLAG_IS_WRITE_NOTIFY ;
 int assert (int ) ;
 int link_to_pending (struct st_h2o_evloop_socket_t*) ;
 int link_to_statechanged (struct st_h2o_evloop_socket_t*) ;
 int wreq_free_buffer_if_allocated (struct st_h2o_evloop_socket_t*) ;
 scalar_t__ write_core (int ,TYPE_4__**,scalar_t__*,size_t*) ;

void write_pending(struct st_h2o_evloop_socket_t *sock)
{
    size_t first_buf_written;

    assert(sock->super._cb.write != ((void*)0));


    if (sock->_wreq.cnt == 0)
        goto Complete;


    if (write_core(sock->fd, &sock->_wreq.bufs, &sock->_wreq.cnt, &first_buf_written) == 0 && sock->_wreq.cnt != 0) {

        sock->_wreq.bufs[0].base += first_buf_written;
        sock->_wreq.bufs[0].len -= first_buf_written;
        return;
    }


    wreq_free_buffer_if_allocated(sock);

Complete:
    sock->_flags |= H2O_SOCKET_FLAG_IS_WRITE_NOTIFY;
    link_to_pending(sock);
    link_to_statechanged(sock);
}
