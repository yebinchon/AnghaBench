
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iwdp_t ;


 int sm_listen (int) ;

int iwdpm_listen(iwdp_t iwdp, int port) {
  return sm_listen(port);
}
