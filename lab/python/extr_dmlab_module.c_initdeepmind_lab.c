
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyMODINIT_FUNC ;


 int * Py_InitModule3 (char*,int ,char*) ;
 int import_array () ;
 scalar_t__ load_module_impl (int *,int *) ;
 int module_methods ;
 int singleton_mod_state ;

PyMODINIT_FUNC initdeepmind_lab(void) {
  PyObject* module =
      Py_InitModule3("deepmind_lab", module_methods, "DeepMind Lab API module");

  if (module != ((void*)0) && load_module_impl(module, &singleton_mod_state) == 0) {
    import_array();
  }
}
