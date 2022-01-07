
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;
typedef int uv_connect_t ;


 int ASSERT (int) ;
 int connect_req ;
 int tcp_client ;
 int uv_close (int *,int *) ;

__attribute__((used)) static void connect_cb(uv_connect_t* req, int status) {
  ASSERT(req == &connect_req);
  ASSERT(status == 0);


  uv_close((uv_handle_t*)&tcp_client, ((void*)0));
}
