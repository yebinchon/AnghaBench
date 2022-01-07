
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int sm_t ;
typedef int sm_status ;


 int SM_SUCCESS ;

sm_status iwdpm_on_sent(sm_t sm, int fd, void *value,
    const char *buf, ssize_t length) {
  return SM_SUCCESS;
}
