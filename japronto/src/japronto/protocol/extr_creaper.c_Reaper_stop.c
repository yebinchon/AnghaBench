
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int check_idle_handle; } ;
typedef TYPE_1__ Reaper ;
typedef void PyObject ;


 void* PyObject_CallFunctionObjArgs (void*,int *) ;
 void* PyObject_GetAttrString (int ,char*) ;
 int Py_DECREF (void*) ;
 void* Py_None ;
 int Py_RETURN_NONE ;
 int Py_XDECREF (void*) ;
 int Py_XINCREF (void*) ;

__attribute__((used)) static PyObject*
Reaper_stop(Reaper* self)
{
  Py_RETURN_NONE;

}
