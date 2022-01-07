
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_getnameinfo_t ;


 int ASSERT (int) ;

__attribute__((used)) static void getnameinfo_req(uv_getnameinfo_t* handle,
                            int status,
                            const char* hostname,
                            const char* service) {
  ASSERT(handle != ((void*)0));
  ASSERT(status == 0);
  ASSERT(hostname != ((void*)0));
  ASSERT(service != ((void*)0));
}
