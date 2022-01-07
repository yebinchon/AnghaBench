
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int fd; } ;
struct TYPE_9__ {int block_size; TYPE_1__ u; } ;
typedef TYPE_2__ tftp_connection_t ;


 TYPE_2__** C ;
 int assert (int) ;
 int fd_close (int *) ;
 int tftp_conn_close_handles (TYPE_2__*) ;
 int tftp_udp_connections ;
 int zfree (TYPE_2__*,int) ;
 TYPE_2__* zmalloc0 (int) ;

tftp_connection_t *get_connection_f (int tid, int force) {
  if (tid < 0 || tid > 0xffff) { return ((void*)0); }
  tftp_connection_t *c = C[tid];
  if (!force) { return c; }
  if (force > 0) {
    tftp_udp_connections++;
    c = zmalloc0 (sizeof (tftp_connection_t));
    c->block_size = 512;
    return C[tid] = c;
  }
  assert (force < 0);
  if (c != ((void*)0)) {
    tftp_udp_connections--;
    fd_close (&c->u.fd);
    tftp_conn_close_handles (c);
    zfree (c, sizeof (tftp_connection_t));
    C[tid] = ((void*)0);
  }
  return c;
}
