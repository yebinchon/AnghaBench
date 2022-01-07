
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* jv_mem_realloc (void*,size_t) ;

void* yyrealloc(void* p, size_t sz, void* extra) {
  return jv_mem_realloc(p, sz);
}
