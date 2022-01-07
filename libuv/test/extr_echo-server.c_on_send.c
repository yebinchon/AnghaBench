
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_udp_send_t ;


 int ASSERT (int) ;
 int free (int *) ;

__attribute__((used)) static void on_send(uv_udp_send_t* req, int status) {
  ASSERT(status == 0);
  free(req);
}
