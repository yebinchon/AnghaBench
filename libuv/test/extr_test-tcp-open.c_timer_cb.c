
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_timer_t ;
typedef int uv_stream_t ;


 int ASSERT (int) ;
 int client ;
 int shutdown_cb ;
 int shutdown_req ;
 int shutdown_requested ;
 int uv_shutdown (int *,int *,int ) ;

__attribute__((used)) static void timer_cb(uv_timer_t* handle) {
  int r;


  r = uv_shutdown(&shutdown_req, (uv_stream_t*) &client, shutdown_cb);
  ASSERT(r == 0);
  shutdown_requested++;
}
