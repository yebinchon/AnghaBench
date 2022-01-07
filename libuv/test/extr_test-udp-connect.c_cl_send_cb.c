
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int handle; } ;
typedef TYPE_1__ uv_udp_send_t ;
struct sockaddr {int dummy; } ;


 int ASSERT (int) ;
 int CHECK_HANDLE (int ) ;
 int UV_EDESTADDRREQ ;
 int buf ;
 int cl_send_cb_called ;
 int client ;
 int lo_addr ;
 int uv_udp_connect (int *,int *) ;
 int uv_udp_send (TYPE_1__*,int *,int *,int,struct sockaddr const*,void (*) (TYPE_1__*,int)) ;

__attribute__((used)) static void cl_send_cb(uv_udp_send_t* req, int status) {
  int r;

  ASSERT(req != ((void*)0));
  ASSERT(status == 0);
  CHECK_HANDLE(req->handle);
  if (++cl_send_cb_called == 1) {
    uv_udp_connect(&client, ((void*)0));
    r = uv_udp_send(req, &client, &buf, 1, ((void*)0), cl_send_cb);
    ASSERT(r == UV_EDESTADDRREQ);
    r = uv_udp_send(req,
                    &client,
                    &buf,
                    1,
                    (const struct sockaddr*) &lo_addr,
                    cl_send_cb);
    ASSERT(r == 0);
  }

}
