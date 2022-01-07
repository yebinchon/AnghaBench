
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_value_t ;
typedef int ecma_object_t ;
typedef int ecma_compiled_code_t ;


 int * ecma_builtin_get_global () ;
 int ecma_get_global_environment () ;
 int ecma_make_object_value (int *) ;
 int vm_run (int const*,int ,int ,int,int *,int ) ;

ecma_value_t
vm_run_global (const ecma_compiled_code_t *bytecode_p)
{
  ecma_object_t *glob_obj_p = ecma_builtin_get_global ();

  return vm_run (bytecode_p,
                 ecma_make_object_value (glob_obj_p),
                 ecma_get_global_environment (),
                 0,
                 ((void*)0),
                 0);
}
