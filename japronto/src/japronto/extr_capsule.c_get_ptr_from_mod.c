
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 void* PyCapsule_GetPointer (int *,char const*) ;
 int * PyImport_ImportModule (char const*) ;
 int * PyObject_GetAttrString (int *,char const*) ;
 int Py_XDECREF (int *) ;

void* get_ptr_from_mod(const char* module_name, const char* attr_name,
                       const char* capsule_name)
{
  void* ptr;
  PyObject* module = ((void*)0);
  PyObject* capsule = ((void*)0);

  module = PyImport_ImportModule(module_name);
  if(!module)
    goto error;

  capsule = PyObject_GetAttrString(module, attr_name);
  if(!capsule)
    goto error;

  ptr = PyCapsule_GetPointer(capsule, capsule_name);
  if(!ptr)
    goto error;

  goto finally;

  error:
  ptr = ((void*)0);

  finally:
  Py_XDECREF(capsule);
  Py_XDECREF(module);
  return ptr;
}
