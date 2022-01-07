
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iwdp_t ;


 int dl_connect (int) ;

int iwdpm_subscribe(iwdp_t iwdp) {
  return dl_connect(-1);
}
