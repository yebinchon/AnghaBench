
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int smallbufs; int bufs; } ;
struct TYPE_4__ {int input; } ;
struct st_h2o_evloop_socket_t {int fd; int _flags; struct st_h2o_evloop_socket_t* _next_statechanged; struct st_h2o_evloop_socket_t* _next_pending; TYPE_1__ _wreq; int * loop; TYPE_2__ super; } ;
typedef int h2o_evloop_t ;


 int evloop_do_on_socket_create (struct st_h2o_evloop_socket_t*) ;
 int h2o_buffer_init (int *,int *) ;
 struct st_h2o_evloop_socket_t* h2o_mem_alloc (int) ;
 int h2o_socket_buffer_prototype ;
 int memset (struct st_h2o_evloop_socket_t*,int ,int) ;

__attribute__((used)) static struct st_h2o_evloop_socket_t *create_socket(h2o_evloop_t *loop, int fd, int flags)
{
    struct st_h2o_evloop_socket_t *sock;

    sock = h2o_mem_alloc(sizeof(*sock));
    memset(sock, 0, sizeof(*sock));
    h2o_buffer_init(&sock->super.input, &h2o_socket_buffer_prototype);
    sock->loop = loop;
    sock->fd = fd;
    sock->_flags = flags;
    sock->_wreq.bufs = sock->_wreq.smallbufs;
    sock->_next_pending = sock;
    sock->_next_statechanged = sock;

    evloop_do_on_socket_create(sock);

    return sock;
}
