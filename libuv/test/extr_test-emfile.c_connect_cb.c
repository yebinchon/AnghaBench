
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;
typedef int uv_connect_t ;


 int ASSERT (int) ;
 int client_handle ;
 int connect_cb_called ;
 int server_handle ;
 int uv_close (int *,int *) ;

__attribute__((used)) static void connect_cb(uv_connect_t* req, int status) {



  ASSERT(0 == status);
  connect_cb_called += 1;
  uv_close((uv_handle_t*) &server_handle, ((void*)0));
  uv_close((uv_handle_t*) &client_handle, ((void*)0));
}
