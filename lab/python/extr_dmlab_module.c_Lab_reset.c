
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int tp_name; } ;
struct TYPE_5__ {int episode; int status; scalar_t__ num_steps; int context; TYPE_1__* env_c_api; } ;
struct TYPE_4__ {scalar_t__ (* start ) (int ,int,int) ;int (* error_message ) (int ) ;} ;
typedef int PyObject ;
typedef TYPE_2__ LabObject ;


 int ENV_STATUS_INITIALIZED ;
 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,int*,int **) ;
 int PyErr_Format (int ,char*,int ) ;
 int * PyErr_Occurred () ;
 int PyExc_RuntimeError ;
 int PyExc_ValueError ;
 int PyInt_AsLong (int *) ;
 int PyInt_Check (int *) ;
 int * Py_None ;
 int Py_RETURN_TRUE ;
 TYPE_3__* Py_TYPE (int *) ;
 int rand () ;
 scalar_t__ stub1 (int ,int,int) ;
 int stub2 (int ) ;

__attribute__((used)) static PyObject* Lab_reset(PyObject* pself, PyObject* args, PyObject* kwds) {
  LabObject* self = (LabObject*)pself;
  int episode = -1;
  int seed;
  PyObject* seed_arg = ((void*)0);

  char* kwlist[] = {"episode", "seed", ((void*)0)};
  if (!PyArg_ParseTupleAndKeywords(args, kwds, "|iO", kwlist, &episode,
                                   &seed_arg)) {
    return ((void*)0);
  }

  if (episode >= 0) {
    self->episode = episode;
  }

  if (seed_arg == ((void*)0) || seed_arg == Py_None) {
    seed = rand();
  } else {
    if (!PyInt_Check(seed_arg)) {
      PyErr_Format(PyExc_ValueError, "'seed' must be int or None, was '%s'.",
                   Py_TYPE(seed_arg)->tp_name);
      return ((void*)0);
    }
    seed = PyInt_AsLong(seed_arg);
  }

  if (self->env_c_api->start(self->context, self->episode, seed) != 0) {
    PyErr_Format(PyExc_RuntimeError, "Failed to start environment - \"%s\"",
                 self->env_c_api->error_message(self->context));
    return ((void*)0);
  }



  if (PyErr_Occurred() != ((void*)0)) {
    return ((void*)0);
  }

  self->num_steps = 0;
  ++self->episode;
  self->status = ENV_STATUS_INITIALIZED;
  Py_RETURN_TRUE;
}
