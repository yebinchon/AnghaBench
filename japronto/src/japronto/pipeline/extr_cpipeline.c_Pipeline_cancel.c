
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int queue_start; int queue_end; int * queue; } ;
typedef int PyObject ;
typedef int PipelineEntry ;
typedef TYPE_1__ Pipeline ;


 int * PipelineEntry_get_task (int ) ;
 int PipelineEntry_is_task (int ) ;
 int * PyObject_CallFunctionObjArgs (int *,int *) ;
 int * PyObject_GetAttrString (int *,char*) ;
 int Py_DECREF (int *) ;
 int Py_XDECREF (int *) ;

void*
Pipeline_cancel(Pipeline* self)
{
  void* result = self;

  PipelineEntry *queue_entry;
  for(queue_entry = self->queue + self->queue_start;
      queue_entry < self->queue + self->queue_end; queue_entry++) {
    if(!PipelineEntry_is_task(*queue_entry))
      continue;

    PyObject* task = PipelineEntry_get_task(*queue_entry);
    PyObject* cancel = ((void*)0);

    if(!(cancel = PyObject_GetAttrString(task, "cancel")))
      goto loop_error;

    PyObject* tmp;
    if(!(tmp = PyObject_CallFunctionObjArgs(cancel, ((void*)0))))
      goto loop_error;
    Py_DECREF(tmp);

    goto loop_finally;

    loop_error:
    result = ((void*)0);

    loop_finally:
    Py_XDECREF(cancel);

    if(!result)
      break;
  }

  return result;
}
