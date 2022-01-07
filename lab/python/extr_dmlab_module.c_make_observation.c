
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ bytes; scalar_t__ doubles; int string; } ;
struct TYPE_5__ {scalar_t__ type; long* shape; int dims; } ;
struct TYPE_7__ {TYPE_2__ payload; TYPE_1__ spec; } ;
typedef int PyObject ;
typedef int PyArrayObject ;
typedef TYPE_3__ EnvCApi_Observation ;


 scalar_t__ EnvCApi_ObservationDoubles ;
 scalar_t__ EnvCApi_ObservationString ;
 int ObservationType2typenum (scalar_t__) ;
 int PyArray_BYTES (int *) ;
 int PyArray_NBYTES (int *) ;
 scalar_t__ PyArray_SimpleNew (int,long*,int) ;
 int PyErr_NoMemory () ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_RuntimeError ;
 int PyString_FromStringAndSize (int ,long) ;
 int * PyUnicode_FromStringAndSize (int ) ;
 long* calloc (int,int) ;
 int free (long*) ;
 int memcpy (int ,void const*,int ) ;

__attribute__((used)) static PyObject* make_observation(const EnvCApi_Observation* observation) {
  if (observation->spec.type == EnvCApi_ObservationString) {
    PyObject* result =



        PyString_FromStringAndSize(

            observation->payload.string, observation->spec.shape[0]);

    if (result == ((void*)0)) PyErr_NoMemory();
    return result;
  }

  int observation_type = ObservationType2typenum(observation->spec.type);
  if (observation_type == -1) {
    PyErr_SetString(PyExc_RuntimeError, "Invalid observation spec.");
    return ((void*)0);
  }

  long* bounds = calloc(observation->spec.dims, sizeof(long));
  if (bounds == ((void*)0)) {
    PyErr_NoMemory();
    return ((void*)0);
  }

  for (int j = 0; j < observation->spec.dims; ++j) {
    bounds[j] = observation->spec.shape[j];
  }

  PyArrayObject* array = (PyArrayObject*)PyArray_SimpleNew(
      observation->spec.dims, bounds, observation_type);
  free(bounds);

  if (array == ((void*)0)) {
    PyErr_NoMemory();
    return ((void*)0);
  }

  const void* src_mem = observation->spec.type == EnvCApi_ObservationDoubles
                            ? (void*)observation->payload.doubles
                            : (void*)observation->payload.bytes;
  memcpy(PyArray_BYTES(array), src_mem, PyArray_NBYTES(array));
  return (PyObject*)array;
}
