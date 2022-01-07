
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_sm_data {scalar_t__ ibf_timeout; } ;


 scalar_t__ GET_STATUS_IBF (unsigned char) ;
 void* IBF_RETRY_TIMEOUT ;
 int start_error_recovery (struct si_sm_data*,char*) ;

__attribute__((used)) static inline int check_ibf(struct si_sm_data *kcs, unsigned char status,
       long time)
{
 if (GET_STATUS_IBF(status)) {
  kcs->ibf_timeout -= time;
  if (kcs->ibf_timeout < 0) {
   start_error_recovery(kcs, "IBF not ready in time");
   kcs->ibf_timeout = IBF_RETRY_TIMEOUT;
   return 1;
  }
  return 0;
 }
 kcs->ibf_timeout = IBF_RETRY_TIMEOUT;
 return 1;
}
