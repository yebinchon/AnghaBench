
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_target {int dummy; } ;


 struct udp_target* out_buf_target ;

void out_buf_set_target (struct udp_target *S) {
  out_buf_target = S;
}
