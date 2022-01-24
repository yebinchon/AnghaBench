#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct connection {int dummy; } ;
struct conn_query {TYPE_4__* cq_type; struct conn_query* next; } ;
struct aiocb {int dummy; } ;
struct aio_connection {int fd; struct aio_connection* cb; struct conn_query* first_query; TYPE_3__* next; TYPE_2__* prev; TYPE_1__* type; int /*<<< orphan*/  last_query; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* close ) (struct conn_query*) ;int /*<<< orphan*/  (* complete ) (struct conn_query*) ;} ;
struct TYPE_7__ {TYPE_2__* prev; } ;
struct TYPE_6__ {TYPE_3__* next; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* wakeup_aio ) (struct connection*,int) ;} ;

/* Variables and functions */
 scalar_t__ AIO_NOTCANCELED ; 
 int EINPROGRESS ; 
 scalar_t__ FUNC0 (int,struct aio_connection*) ; 
 int FUNC1 (struct aio_connection*) ; 
 scalar_t__ aio_errors_verbosity ; 
 int FUNC2 (struct aio_connection*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct connection*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct conn_query*) ; 
 int /*<<< orphan*/  FUNC7 (struct conn_query*) ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC8 (struct aio_connection*,int) ; 

int FUNC9 (struct aio_connection *a) {

  if (verbosity > 1) {
    FUNC3 (stderr, "in check_aio_completion(%p [first_query=%p, last_query=%d])\n", a, a->first_query, a->last_query);
  }

  errno = 0;

  int err = FUNC1 (a->cb);
  
  if (err == EINPROGRESS) {
    if (verbosity > 1) {
      FUNC3 (stderr, "aio_query %p in progress...\n", a);
    }
    if (a->first_query == (struct conn_query *) a) {
      if (verbosity > 0) {
        FUNC3 (stderr, "aio_query %p in progress, but all conn_queries are dead, canceling aio.\n", a);
      }
      if (FUNC0 (a->fd, a->cb) == AIO_NOTCANCELED) {
        if (verbosity > 0) {
          FUNC3 (stderr, "aio_cancel(%d,%p) returns AIO_NOTCANCELED\n", a->fd, a->cb);
        }
        return 0;
      }
      err = FUNC1 (a->cb);
      if (err == EINPROGRESS) {
        if (verbosity > 0) {
          FUNC3 (stderr, "aio_query %p still in progress.\n", a);
        }
        return 0;
      }
    } else {
      return 0;
    }
  }

  int res = FUNC2 (a->cb);
  if (verbosity > 1 || (aio_errors_verbosity && err)) {
    FUNC3 (stderr, "aio_return() returns %d, errno=%d (%s)\n", res, err, FUNC4 (err));
  }

  a->type->wakeup_aio ((struct connection *)a, res);

  a->next->prev = a->prev;
  a->prev->next = a->next;

  struct conn_query *tmp, *tnext;

  for (tmp = a->first_query; tmp != (struct conn_query *)a; tmp = tnext) {
    tnext = tmp->next;
//    fprintf (stderr, "scanning aio_completion %p,next = %p\n", tmp, tnext);
    if (res >= 0) {
      tmp->cq_type->complete (tmp);
    } else {
      tmp->cq_type->close (tmp);
    }
  }

  if (verbosity > 2) {
    FUNC3 (stderr, "freeing aio_connection at %p\n", a);
  }

  FUNC8 (a->cb, sizeof (struct aiocb));
  FUNC8 (a, sizeof (struct aio_connection));

  return 1;
}