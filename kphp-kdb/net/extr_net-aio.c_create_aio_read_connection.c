
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct conn_query {int dummy; } ;
struct aiocb {int dummy; } ;
struct aio_connection {int fd; TYPE_2__* cb; struct aio_connection* next; struct aio_connection* prev; int status; int basic_type; void* extra; struct conn_query* last_query; struct conn_query* first_query; int * type; int flags; } ;
typedef scalar_t__ off_t ;
typedef int conn_type_t ;
struct TYPE_6__ {struct aio_connection* last; } ;
struct TYPE_4__ {int sigev_signo; int sigev_notify; } ;
struct TYPE_5__ {int aio_fildes; int aio_nbytes; TYPE_1__ aio_sigevent; scalar_t__ aio_offset; void* aio_buf; } ;


 int C_AIO ;
 int SIGEV_SIGNAL ;
 int SIGPOLL ;
 TYPE_3__ aio_list ;
 scalar_t__ aio_read (TYPE_2__*) ;
 int conn_wait_aio ;
 int ct_aio ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int verbosity ;
 void* zmalloc0 (int) ;

struct aio_connection *create_aio_read_connection (int fd, void *target, off_t offset, int len, conn_type_t *type, void *extra) {
  struct aio_connection *a = zmalloc0 (sizeof (struct aio_connection));

  if (verbosity > 1) {
    fprintf (stderr, "in create_aio_read_connection(%d,%p,%lld,%d,%p): allocated at %p\n", fd, target, (long long) offset, len, extra, a);
  }

  a->fd = fd;
  a->flags = C_AIO;
  a->type = type;
  a->cb = zmalloc0 (sizeof (struct aiocb));
  a->first_query = a->last_query = (struct conn_query *)a;
  a->extra = extra;
  a->basic_type = ct_aio;
  a->status = conn_wait_aio;

  a->next = (struct aio_connection *)&aio_list;
  a->prev = aio_list.last;

  aio_list.last->next = a;
  aio_list.last = a;

  a->cb->aio_fildes = fd;
  a->cb->aio_buf = target;
  a->cb->aio_offset = offset;
  a->cb->aio_nbytes = len;
  a->cb->aio_sigevent.sigev_notify = SIGEV_SIGNAL;
  a->cb->aio_sigevent.sigev_signo = SIGPOLL;

  if (aio_read (a->cb) < 0) {
    fprintf (stderr, "aio_read returned -1: %m\n");
    exit (3);
  };

  return a;
}
