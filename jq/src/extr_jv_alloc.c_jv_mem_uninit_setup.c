
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 char jv_mem_uninitialised ;
 char* malloc (int) ;

__attribute__((constructor)) void jv_mem_uninit_setup(){


  char* p = malloc(1);
  jv_mem_uninitialised = *p;
  free(p);

}
