
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iwdp_t ;


 int sm_connect (char const*) ;

int iwdpm_connect(iwdp_t iwdp, const char *socket_addr) {
  return sm_connect(socket_addr);
}
