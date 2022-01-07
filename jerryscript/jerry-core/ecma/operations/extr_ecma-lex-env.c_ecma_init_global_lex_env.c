
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ecma_object_t ;


 int ECMA_BUILTIN_ID_GLOBAL ;
 int ECMA_LEXICAL_ENVIRONMENT_THIS_OBJECT_BOUND ;
 int ECMA_SET_NON_NULL_POINTER (int ,int *) ;
 int JERRY_CONTEXT (int ) ;
 int * ecma_builtin_get (int ) ;
 int * ecma_create_object_lex_env (int *,int *,int ) ;
 int ecma_global_lex_env_cp ;

void
ecma_init_global_lex_env (void)
{
  ecma_object_t *glob_obj_p = ecma_builtin_get (ECMA_BUILTIN_ID_GLOBAL);

  ecma_object_t *global_lex_env_p = ecma_create_object_lex_env (((void*)0),
                                                                glob_obj_p,
                                                                ECMA_LEXICAL_ENVIRONMENT_THIS_OBJECT_BOUND);
  ECMA_SET_NON_NULL_POINTER (JERRY_CONTEXT (ecma_global_lex_env_cp), global_lex_env_p);
}
