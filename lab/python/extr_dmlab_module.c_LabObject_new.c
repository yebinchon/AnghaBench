
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int status; int * env_c_api; } ;
struct TYPE_5__ {scalar_t__ (* tp_alloc ) (TYPE_1__*,int ) ;} ;
typedef TYPE_1__ PyTypeObject ;
typedef int PyObject ;
typedef TYPE_2__ LabObject ;


 int ENV_STATUS_CLOSED ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_MemoryError ;
 int * calloc (int,int) ;
 scalar_t__ stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static PyObject* LabObject_new(PyTypeObject* type, PyObject* args,
                               PyObject* kwds) {
  LabObject* self;

  self = (LabObject*)type->tp_alloc(type, 0);
  if (self != ((void*)0)) {
    self->env_c_api = calloc(1, sizeof *self->env_c_api);

    if (self->env_c_api == ((void*)0)) {
      PyErr_SetString(PyExc_MemoryError, "malloc failed.");
      return ((void*)0);
    }
    self->status = ENV_STATUS_CLOSED;
  }
  return (PyObject*)self;
}
