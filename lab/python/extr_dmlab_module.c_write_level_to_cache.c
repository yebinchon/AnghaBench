
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 scalar_t__ PyErr_Occurred () ;
 int * PyObject_CallMethod (void*,char*,char*,char const*,char const*) ;
 int Py_XDECREF (int *) ;

__attribute__((used)) static void write_level_to_cache(void* level_cache_context,
                                 const char* const cache_paths[],
                                 int num_cache_paths,
                                 const char* key,
                                 const char* pk3_path) {

  if (PyErr_Occurred()) return;


  PyObject* output = PyObject_CallMethod(
      level_cache_context, "write", "ss", key, pk3_path);

  Py_XDECREF(output);
}
