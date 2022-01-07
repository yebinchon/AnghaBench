
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;
typedef int uv_connect_t ;


 int ASSERT (int) ;
 int client ;
 int close_cb ;
 int connect_cb_called ;
 int free (int *) ;
 int uv_close (int *,int ) ;

__attribute__((used)) static void connect_cb(uv_connect_t* req, int status) {
  ASSERT(req != ((void*)0));
  ASSERT(status == 0);
  free(req);
  uv_close((uv_handle_t*)&client, close_cb);
  connect_cb_called++;
}
