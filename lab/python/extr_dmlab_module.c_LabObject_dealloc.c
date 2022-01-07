
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* tp_free ) (int *) ;} ;
struct TYPE_5__ {int observation_indices; int env_c_api; int level_cache_context; } ;
typedef int PyObject ;
typedef TYPE_1__ LabObject ;


 TYPE_3__* Py_TYPE (TYPE_1__*) ;
 int Py_XDECREF (int ) ;
 int env_close (TYPE_1__*) ;
 int free (int ) ;
 int stub1 (int *) ;

__attribute__((used)) static void LabObject_dealloc(PyObject* pself) {
  LabObject* self = (LabObject*)pself;
  env_close(self);
  Py_XDECREF(self->level_cache_context);
  free(self->env_c_api);
  free(self->observation_indices);
  Py_TYPE(self)->tp_free(pself);
}
