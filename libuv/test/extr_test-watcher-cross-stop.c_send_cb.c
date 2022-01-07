
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_udp_send_t ;


 int send_cb_called ;

__attribute__((used)) static void send_cb(uv_udp_send_t* req, int status) {
  send_cb_called++;
}
