
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int backend ;
 int git_config_backend_free (int ) ;

void test_config_memory__cleanup(void)
{
 git_config_backend_free(backend);
}
