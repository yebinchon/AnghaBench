
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUM_VARS ;
 int cl_sandbox_set_search_path_defaults () ;
 int cl_setenv (int ,int *) ;
 int ** env_save ;
 int * env_vars ;
 int git__free (int *) ;
 char** home_values ;
 int p_rmdir (char*) ;

void test_core_env__cleanup(void)
{
 int i;
 char **val;

 for (i = 0; i < NUM_VARS; ++i) {
  cl_setenv(env_vars[i], env_save[i]);
  git__free(env_save[i]);
  env_save[i] = ((void*)0);
 }




 for (val = home_values; *val != ((void*)0); val++) {
  if (**val != '\0')
   (void)p_rmdir(*val);
 }

 cl_sandbox_set_search_path_defaults();
}
