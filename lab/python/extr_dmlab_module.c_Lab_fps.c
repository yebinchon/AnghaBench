
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int context; TYPE_1__* env_c_api; } ;
struct TYPE_3__ {int (* fps ) (int ) ;} ;
typedef int PyObject ;
typedef TYPE_2__ LabObject ;


 int * PyInt_FromLong (int ) ;
 int stub1 (int ) ;

__attribute__((used)) static PyObject* Lab_fps(PyObject* self, PyObject* no_arg) {
  return PyInt_FromLong(
      ((LabObject*)self)->env_c_api->fps(((LabObject*)self)->context));
}
