
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int LabModuleState ;


 int singleton_mod_state ;

__attribute__((used)) static LabModuleState* get_module_state(PyObject* module) {
  return &singleton_mod_state;
}
