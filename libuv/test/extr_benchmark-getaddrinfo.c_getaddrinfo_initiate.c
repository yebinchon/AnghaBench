
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_getaddrinfo_t ;


 int ASSERT (int) ;
 int calls_initiated ;
 int getaddrinfo_cb ;
 int loop ;
 int name ;
 int uv_getaddrinfo (int ,int *,int *,int ,int *,int *) ;

__attribute__((used)) static void getaddrinfo_initiate(uv_getaddrinfo_t* handle) {
  int r;

  calls_initiated++;

  r = uv_getaddrinfo(loop, handle, &getaddrinfo_cb, name, ((void*)0), ((void*)0));
  ASSERT(r == 0);
}
