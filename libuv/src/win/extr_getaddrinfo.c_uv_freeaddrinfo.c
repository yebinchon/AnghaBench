
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int dummy; } ;


 int uv__free (char*) ;

void uv_freeaddrinfo(struct addrinfo* ai) {
  char* alloc_ptr = (char*)ai;


  uv__free(alloc_ptr);
}
