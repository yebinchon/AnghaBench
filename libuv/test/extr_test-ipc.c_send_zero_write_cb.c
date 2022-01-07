
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_write_t ;


 int ASSERT (int) ;
 int send_zero_write ;

__attribute__((used)) static void send_zero_write_cb(uv_write_t* req, int status) {
  ASSERT(status == 0);
  send_zero_write++;
}
