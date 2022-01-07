
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int * PyCapsule_New (void*,char const*,int *) ;
 int PyModule_AddObject (int *,char const*,int *) ;
 int Py_INCREF (int *) ;
 int Py_XDECREF (int *) ;

PyObject* put_ptr_in_mod(PyObject* m, void* ptr, const char* attr_name,
                         const char* capsule_name)
{
  PyObject* capsule = ((void*)0);

  capsule = PyCapsule_New(ptr, capsule_name, ((void*)0));
  if(!capsule)
    goto error;

  if(PyModule_AddObject(m, attr_name, capsule) == -1)
    goto error;

  Py_INCREF(capsule);
  goto finally;

  error:
  Py_XDECREF(capsule);
  capsule = ((void*)0);

  finally:
  return capsule;
}
