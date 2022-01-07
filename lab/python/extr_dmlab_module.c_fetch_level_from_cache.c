
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 scalar_t__ PyErr_Occurred () ;
 int * PyObject_CallMethod (void*,char*,char*,char const*,char const*) ;
 scalar_t__ PyObject_IsTrue (int *) ;
 int Py_XDECREF (int *) ;

__attribute__((used)) static bool fetch_level_from_cache(void* level_cache_context,
                                   const char* const cache_paths[],
                                   int num_cache_paths,
                                   const char* key,
                                   const char* pk3_path) {

  if (PyErr_Occurred()) return 0;


  PyObject* output = PyObject_CallMethod(
      level_cache_context, "fetch", "ss", key, pk3_path);

  bool result = output != ((void*)0) && PyObject_IsTrue(output);

  Py_XDECREF(output);

  return result;
}
