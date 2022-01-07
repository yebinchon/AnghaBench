
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_getnameinfo_t ;


 int ASSERT (int) ;
 int UV_EAI_CANCELED ;

__attribute__((used)) static void getnameinfo_cb(uv_getnameinfo_t* handle,
                           int status,
                           const char* hostname,
                           const char* service) {
  ASSERT(status == UV_EAI_CANCELED);
  ASSERT(hostname == ((void*)0));
  ASSERT(service == ((void*)0));
}
