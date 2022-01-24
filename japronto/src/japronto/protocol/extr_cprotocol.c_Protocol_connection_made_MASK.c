#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int closed; scalar_t__ last_read_ops; scalar_t__ read_ops; scalar_t__ idle_time; int /*<<< orphan*/ * app; void* writelines; void* write; int /*<<< orphan*/ * transport; void* false_cnt; void* true_cnt; void* none_cnt; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ Protocol ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Py_False ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Py_None ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Py_RETURN_NONE ; 
 int /*<<< orphan*/  Py_True ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t,size_t,size_t) ; 

__attribute__((used)) static PyObject*
FUNC6(Protocol* self, PyObject* transport)
{
#ifdef PROTOCOL_TRACK_REFCNT
  printf("made: %ld, %ld, %ld, ",
    (size_t)Py_REFCNT(Py_None), (size_t)Py_REFCNT(Py_True), (size_t)Py_REFCNT(Py_False));
  self->none_cnt = Py_REFCNT(Py_None);
  self->true_cnt = Py_REFCNT(Py_True);
  self->false_cnt = Py_REFCNT(Py_False);
#endif

  PyObject* connections = NULL;
  self->transport = transport;
  FUNC2(self->transport);

  if(!(self->write = FUNC0(transport, "write")))
    goto error;

  if(!(self->writelines = FUNC0(transport, "writelines")))
    goto error;

  if(!(connections = FUNC0(self->app, "_connections")))
    goto error;

#ifdef REAPER_ENABLED
  self->idle_time = 0;
  self->read_ops = 0;
  self->last_read_ops = 0;
#endif

  if(FUNC1(connections, (PyObject*)self) == -1)
    goto error;

  self->closed = false;

  goto finally;

  error:
  return NULL;

  finally:
  FUNC4(connections);
  Py_RETURN_NONE;
}