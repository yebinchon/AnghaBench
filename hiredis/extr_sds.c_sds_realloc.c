
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* s_realloc (void*,size_t) ;

void *sds_realloc(void *ptr, size_t size) { return s_realloc(ptr,size); }
