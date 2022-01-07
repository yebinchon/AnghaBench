
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* s_malloc (size_t) ;

void *sds_malloc(size_t size) { return s_malloc(size); }
