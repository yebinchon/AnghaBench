
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ ResponseType; int * (* Response_render ) (TYPE_1__*,int) ;} ;
struct TYPE_16__ {size_t responses_end; scalar_t__ len; int ** responses; int enabled; } ;
struct TYPE_15__ {int * request_logger; int * write; TYPE_4__ gather; int error_handler; } ;
struct TYPE_14__ {int simple; int * done_callbacks; int exception; } ;
struct TYPE_13__ {scalar_t__ keep_alive; } ;
typedef TYPE_1__ Response ;
typedef TYPE_2__ Request ;
typedef scalar_t__ Py_ssize_t ;
typedef int PyObject ;
typedef TYPE_3__ Protocol ;
typedef TYPE_4__ Gather ;


 scalar_t__ GATHER_MAX_LEN ;
 size_t GATHER_MAX_RESP ;
 int * Gather_flush (TYPE_4__*) ;
 scalar_t__ KEEP_ALIVE_FALSE ;
 int Protocol_catch_exception (int *) ;
 int Protocol_close (TYPE_3__*) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;
 int * PyList_GET_ITEM (int *,scalar_t__) ;
 scalar_t__ PyList_GET_SIZE (int *) ;
 int * PyObject_CallFunctionObjArgs (int *,int *,int *,...) ;
 int Py_DECREF (int *) ;
 scalar_t__ Py_SIZE (int *) ;
 scalar_t__ Py_TYPE (TYPE_1__*) ;
 int Py_XDECREF (int *) ;
 TYPE_6__* response_capi ;
 int * stub1 (TYPE_1__*,int) ;

__attribute__((used)) static inline Protocol*
Protocol_write_response_or_err(Protocol* self, PyObject* request, Response* response)
{
    Protocol* result = self;
    PyObject* response_bytes = ((void*)0);
    PyObject* error_result = ((void*)0);
    PyObject* gather_buffer = ((void*)0);

    if(response && Py_TYPE(response) != response_capi->ResponseType)
    {
      PyErr_SetString(PyExc_ValueError, "View did not return Response instance");
      Protocol_catch_exception(request);
      response = ((void*)0);
    }

    if(!response) {
      error_result = PyObject_CallFunctionObjArgs(
        self->error_handler, request, ((Request*)request)->exception, ((void*)0));
      if(!error_result)
        goto error;

      ((Request*)request)->simple = 0;
      if(!Protocol_write_response_or_err(self, request, (Response*)error_result))
        goto error;

      goto finally;
    }

    if(!(response_bytes =
         response_capi->Response_render(response, ((Request*)request)->simple)))
      goto error;

    PyObject* tmp;

    PyObject* done_callbacks = ((Request*)request)->done_callbacks;
    for(Py_ssize_t i = 0; done_callbacks && i < PyList_GET_SIZE(done_callbacks); i++) {
      PyObject* callback = PyList_GET_ITEM(done_callbacks, i);

      if(!(tmp = PyObject_CallFunctionObjArgs(callback, request, ((void*)0))))
        goto error;
      Py_DECREF(tmp);
    }

    Gather* gather = &self->gather;

    if(!gather->enabled)
      goto maybe_flush;

    if(gather->responses_end == GATHER_MAX_RESP)
      goto maybe_flush;

    if(gather->len + Py_SIZE(response_bytes) > GATHER_MAX_LEN)
      goto maybe_flush;

    gather->responses[gather->responses_end] = response_bytes;
    gather->responses_end++;
    gather->len += Py_SIZE(response_bytes);
    response_bytes = ((void*)0);

    goto dont_flush;

    maybe_flush:
    if(!gather->len)
      goto dont_flush;

    if(!(gather_buffer = Gather_flush(gather)))
      goto error;

    if(!(tmp = PyObject_CallFunctionObjArgs(self->write, gather_buffer, ((void*)0))))
      goto error;
    Py_DECREF(tmp);

    dont_flush:

    if(response_bytes) {
      if(!(tmp = PyObject_CallFunctionObjArgs(self->write, response_bytes, ((void*)0))))
        goto error;
      Py_DECREF(tmp);
    }

    if(self->request_logger) {
      if(!(tmp = PyObject_CallFunctionObjArgs(self->request_logger, request, ((void*)0))))
        goto error;
      Py_DECREF(tmp);
    }

    if(response->keep_alive == KEEP_ALIVE_FALSE) {
      if(!Protocol_close(self))
        goto error;
    }

    goto finally;

    error:
    result = ((void*)0);

    finally:
    Py_XDECREF(gather_buffer);
    Py_XDECREF(error_result);
    Py_XDECREF(response_bytes);
    return result;
}
