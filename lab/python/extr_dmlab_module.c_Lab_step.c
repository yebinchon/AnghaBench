
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ status; int num_steps; int context; TYPE_1__* env_c_api; } ;
struct TYPE_4__ {int (* action_discrete_count ) (int ) ;scalar_t__ (* advance ) (int ,int,double*) ;int (* error_message ) (int ) ;int (* act_discrete ) (int ,int*) ;} ;
typedef int PyObject ;
typedef int PyArrayObject ;
typedef TYPE_2__ LabObject ;


 scalar_t__ EnvCApi_EnvironmentStatus_Error ;
 scalar_t__ NPY_INT ;
 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,int *,int **,int*) ;
 scalar_t__ PyArray_DATA (int *) ;
 int PyArray_DIM (int *,int ) ;
 int PyArray_NDIM (int *) ;
 scalar_t__ PyArray_TYPE (int *) ;
 int PyArray_Type ;
 int PyErr_Format (int ,char*,int) ;
 int * PyErr_Occurred () ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_RuntimeError ;
 int PyExc_ValueError ;
 int * PyFloat_FromDouble (double) ;
 int is_running (TYPE_2__*) ;
 int stub1 (int ) ;
 int stub2 (int ,int*) ;
 scalar_t__ stub3 (int ,int,double*) ;
 int stub4 (int ) ;

__attribute__((used)) static PyObject* Lab_step(PyObject* pself, PyObject* args, PyObject* kwds) {
  LabObject* self = (LabObject*)pself;
  PyObject* action_obj = ((void*)0);
  int num_steps = 1;

  char* kwlist[] = {"action", "num_steps", ((void*)0)};
  double reward;

  if (!PyArg_ParseTupleAndKeywords(args, kwds, "O!|i", kwlist, &PyArray_Type,
                                   &action_obj, &num_steps)) {
    return ((void*)0);
  }

  if (!is_running(self)) {
    PyErr_SetString(PyExc_RuntimeError,
                    "Environment in wrong status to advance.");
    return ((void*)0);
  }

  PyArrayObject* discrete = (PyArrayObject*)action_obj;

  int action_discrete_count =
      self->env_c_api->action_discrete_count(self->context);
  if (PyArray_NDIM(discrete) != 1 ||
      PyArray_DIM(discrete, 0) != action_discrete_count) {
    PyErr_Format(PyExc_ValueError, "action must have shape (%i)",
                 action_discrete_count);
    return ((void*)0);
  }

  if (PyArray_TYPE(discrete) != NPY_INT) {
    PyErr_SetString(PyExc_ValueError, "action must have dtype np.intc");
    return ((void*)0);
  }

  self->env_c_api->act_discrete(self->context, (int*)PyArray_DATA(discrete));

  self->status = self->env_c_api->advance(self->context, num_steps, &reward);
  self->num_steps += num_steps;
  if (self->status == EnvCApi_EnvironmentStatus_Error) {
    PyErr_Format(PyExc_ValueError, "Failed to advance environment \"%s\"",
                 self->env_c_api->error_message(self->context));
    return ((void*)0);
  }



  if (PyErr_Occurred() != ((void*)0)) {
    return ((void*)0);
  }

  return PyFloat_FromDouble(reward);
}
