#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ len; scalar_t__ responses_end; } ;
struct TYPE_6__ {TYPE_1__ gather; int /*<<< orphan*/ * app; void* request_logger; void* create_task; void* error_handler; void* matcher; int /*<<< orphan*/  pipeline; int /*<<< orphan*/  parser; void* feed_disconnect; void* feed; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_2__ Protocol ;

/* Variables and functions */
 int /*<<< orphan*/  Parser ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Protocol_pipeline_ready ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_True ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(Protocol* self, PyObject *args, PyObject *kw)
{
  int result = 0;
  PyObject* loop = NULL;
  PyObject* log_request = NULL;
#ifdef PARSER_STANDALONE
  PyObject* parser = NULL;

  PyObject* on_headers = PyObject_GetAttrString((PyObject*)self, "on_headers");
  if(!on_headers) // FIXME leak
    goto error;
  PyObject* on_body = PyObject_GetAttrString((PyObject*)self, "on_body");
  if(!on_body) // FIXME leak
    goto error;
  PyObject* on_error = PyObject_GetAttrString((PyObject*)self, "on_error");
  if(!on_error) // FIXME leak
    goto error;

  parser = PyObject_CallFunctionObjArgs(
    Parser, on_headers, on_body, on_error, NULL);
  if(!parser)
    goto error;

  self->feed = PyObject_GetAttrString(parser, "feed");
  if(!self->feed)
    goto error;

  self->feed_disconnect = PyObject_GetAttrString(parser, "feed_disconnect");
  if(!self->feed_disconnect)
    goto error;
#else
  if(FUNC0(&self->parser, self) == -1)
    goto error;
#endif

  if(FUNC1(&self->pipeline, Protocol_pipeline_ready, (PyObject*)self) == -1)
    goto error;

  if(!FUNC2(args, "O", &self->app))
    goto error;
  FUNC5(self->app);

  self->matcher = FUNC4(self->app, "_matcher");
  if(!self->matcher)
    goto error;

  self->error_handler = FUNC4(self->app, "error_handler");
  if(!self->error_handler)
    goto error;

  loop = FUNC4(self->app, "_loop");
  if(!loop)
    goto error;

  self->create_task = FUNC4(loop, "create_task");
  if(!self->create_task)
    goto error;

  if(!(log_request = FUNC4(self->app, "_log_request")))
    goto error;

  if(log_request == Py_True) {
    if(!(self->request_logger = FUNC4(self->app, "default_request_logger")))
      goto error;
  }

  self->gather.responses_end = 0;
  self->gather.len = 0;

  goto finally;

  error:
  result = -1;
  finally:
  FUNC6(log_request);
  FUNC6(loop);
#ifdef PARSER_STANDALONE
  Py_XDECREF(parser);
#endif
  return result;
}