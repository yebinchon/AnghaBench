
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pipeline; } ;
typedef int PyObject ;
typedef TYPE_1__ Protocol ;


 scalar_t__ PIPELINE_EMPTY (int *) ;
 int Py_RETURN_FALSE ;
 int Py_RETURN_TRUE ;

__attribute__((used)) static PyObject*
Protocol_get_pipeline_empty(Protocol* self)
{
  if(PIPELINE_EMPTY(&self->pipeline))
    Py_RETURN_TRUE;

  Py_RETURN_FALSE;
}
