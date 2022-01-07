
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int queue_start; int queue_end; int * protocol; int * queue; int (* ready ) (int ,int *) ;} ;
typedef int PyObject ;
typedef int PipelineEntry ;
typedef TYPE_1__ Pipeline ;


 scalar_t__ PIPELINE_EMPTY (TYPE_1__*) ;
 int PipelineEntry_DECREF (int ) ;
 int * PipelineEntry_get_task (int ) ;
 scalar_t__ PipelineEntry_is_task (int ) ;
 int * PyObject_CallFunctionObjArgs (int (*) (int ,int *),int ,...) ;
 int * PyObject_GetAttrString (int *,char*) ;
 int Py_DECREF (int *) ;
 int * Py_False ;
 int * Py_True ;
 int Py_XDECREF (int *) ;
 int Py_XINCREF (int *) ;
 int stub1 (int ,int *) ;

__attribute__((used)) static PyObject*
Pipeline__task_done(Pipeline* self, PyObject* task)
{
  PyObject* result = Py_True;

  PipelineEntry *queue_entry;
  for(queue_entry = self->queue + self->queue_start;
      queue_entry < self->queue + self->queue_end; queue_entry++) {
    PyObject* done = ((void*)0);
    PyObject* done_result = ((void*)0);
    result = Py_True;

    if(PipelineEntry_is_task(*queue_entry)) {
      task = PipelineEntry_get_task(*queue_entry);

      if(!(done = PyObject_GetAttrString(task, "done")))
        goto loop_error;

      if(!(done_result = PyObject_CallFunctionObjArgs(done, ((void*)0))))
        goto loop_error;

      if(done_result == Py_False) {
        result = Py_False;
        goto loop_finally;
      }
    }







    if(!self->ready(*queue_entry, self->protocol))
      goto loop_error;


    PipelineEntry_DECREF(*queue_entry);

    goto loop_finally;

    loop_error:
    result = ((void*)0);

    loop_finally:
    Py_XDECREF(done_result);
    Py_XDECREF(done);
    if(!result)
      goto error;
    if(result == Py_False)
      break;
  }

  self->queue_start = queue_entry - self->queue;


  if(PIPELINE_EMPTY(self))

    Py_DECREF(self->protocol);


  goto finally;

  error:
  result = ((void*)0);

  finally:
  Py_XINCREF(result);
  return result;
}
