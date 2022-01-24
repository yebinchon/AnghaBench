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
struct TYPE_3__ {int closed; scalar_t__ none_cnt; scalar_t__ true_cnt; scalar_t__ false_cnt; int /*<<< orphan*/  pipeline; int /*<<< orphan*/  app; int /*<<< orphan*/  parser; int /*<<< orphan*/  feed_disconnect; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ Protocol ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_False ; 
 int /*<<< orphan*/ * Py_None ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_True ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,size_t,size_t,size_t) ; 

__attribute__((used)) static PyObject*
FUNC11(Protocol* self, PyObject* args)
{
  self->closed = true;

  PyObject* connections = NULL;
  PyObject* result = Py_None;
#ifdef PARSER_STANDALONE
  PyObject* result = PyObject_CallFunctionObjArgs(
    self->feed_disconnect, NULL);
  if(!result)
    goto error;
  Py_DECREF(result); // FIXME: result can leak
#else
  if(!FUNC0(&self->parser))
    goto error;
#endif

  if(!(connections = FUNC3(self->app, "_connections")))
    goto error;

  if(FUNC4(connections, (PyObject*)self) == -1)
    goto error;

  if(!FUNC1(&self->pipeline))
    goto error;

#ifdef PROTOCOL_TRACK_REFCNT
printf("lost: %ld, %ld, %ld\n",
  (size_t)Py_REFCNT(Py_None), (size_t)Py_REFCNT(Py_True), (size_t)Py_REFCNT(Py_False));
  assert(Py_REFCNT(Py_None) == self->none_cnt);
  assert(Py_REFCNT(Py_True) == self->true_cnt);
  assert(Py_REFCNT(Py_False) >= self->false_cnt);
#endif

  goto finally;

  error:
  result = NULL;

  finally:
  FUNC7(connections);
  FUNC8(result);
  return result;
}