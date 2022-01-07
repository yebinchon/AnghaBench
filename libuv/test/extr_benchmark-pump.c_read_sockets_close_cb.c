
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;


 int free (int *) ;
 int loop ;
 int read_show_stats () ;
 scalar_t__ read_sockets ;
 scalar_t__ server ;
 int start_time ;
 int uv_close (int *,int *) ;
 int uv_now (int ) ;

__attribute__((used)) static void read_sockets_close_cb(uv_handle_t* handle) {
  free(handle);
  read_sockets--;




  if (uv_now(loop) - start_time > 1000 && read_sockets == 0) {
    read_show_stats();
    uv_close((uv_handle_t*)server, ((void*)0));
  }
}
