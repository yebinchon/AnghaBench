
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int jv_mem_free (void*) ;

void yyfree(void* p, void* extra) {
  jv_mem_free(p);
}
