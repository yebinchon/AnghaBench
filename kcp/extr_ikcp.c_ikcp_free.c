
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;
 int ikcp_free_hook (void*) ;

__attribute__((used)) static void ikcp_free(void *ptr) {
 if (ikcp_free_hook) {
  ikcp_free_hook(ptr);
 } else {
  free(ptr);
 }
}
