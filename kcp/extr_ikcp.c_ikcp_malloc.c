
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* ikcp_malloc_hook (size_t) ;
 void* malloc (size_t) ;

__attribute__((used)) static void* ikcp_malloc(size_t size) {
 if (ikcp_malloc_hook)
  return ikcp_malloc_hook(size);
 return malloc(size);
}
