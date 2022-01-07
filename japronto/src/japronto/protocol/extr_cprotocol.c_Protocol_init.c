
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ len; scalar_t__ responses_end; } ;
struct TYPE_6__ {TYPE_1__ gather; int * app; void* request_logger; void* create_task; void* error_handler; void* matcher; int pipeline; int parser; void* feed_disconnect; void* feed; } ;
typedef int PyObject ;
typedef TYPE_2__ Protocol ;


 int Parser ;
 int Parser_init (int *,TYPE_2__*) ;
 int Pipeline_init (int *,int ,int *) ;
 int Protocol_pipeline_ready ;
 int PyArg_ParseTuple (int *,char*,int **) ;
 int * PyObject_CallFunctionObjArgs (int ,int *,int *,int *,int *) ;
 void* PyObject_GetAttrString (int *,char*) ;
 int Py_INCREF (int *) ;
 int * Py_True ;
 int Py_XDECREF (int *) ;

__attribute__((used)) static int
Protocol_init(Protocol* self, PyObject *args, PyObject *kw)
{
  int result = 0;
  PyObject* loop = ((void*)0);
  PyObject* log_request = ((void*)0);
  if(Parser_init(&self->parser, self) == -1)
    goto error;


  if(Pipeline_init(&self->pipeline, Protocol_pipeline_ready, (PyObject*)self) == -1)
    goto error;

  if(!PyArg_ParseTuple(args, "O", &self->app))
    goto error;
  Py_INCREF(self->app);

  self->matcher = PyObject_GetAttrString(self->app, "_matcher");
  if(!self->matcher)
    goto error;

  self->error_handler = PyObject_GetAttrString(self->app, "error_handler");
  if(!self->error_handler)
    goto error;

  loop = PyObject_GetAttrString(self->app, "_loop");
  if(!loop)
    goto error;

  self->create_task = PyObject_GetAttrString(loop, "create_task");
  if(!self->create_task)
    goto error;

  if(!(log_request = PyObject_GetAttrString(self->app, "_log_request")))
    goto error;

  if(log_request == Py_True) {
    if(!(self->request_logger = PyObject_GetAttrString(self->app, "default_request_logger")))
      goto error;
  }

  self->gather.responses_end = 0;
  self->gather.len = 0;

  goto finally;

  error:
  result = -1;
  finally:
  Py_XDECREF(log_request);
  Py_XDECREF(loop);



  return result;
}
