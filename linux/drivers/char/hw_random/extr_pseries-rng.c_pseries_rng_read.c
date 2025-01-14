
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hwrng {int dummy; } ;


 int EIO ;
 int H_RANDOM ;
 int H_SUCCESS ;
 int PLPAR_HCALL_BUFSIZE ;
 int memcpy (void*,int *,int) ;
 int plpar_hcall (int ,unsigned long*) ;
 int pr_err_ratelimited (char*,int) ;

__attribute__((used)) static int pseries_rng_read(struct hwrng *rng, void *data, size_t max, bool wait)
{
 u64 buffer[PLPAR_HCALL_BUFSIZE];
 int rc;

 rc = plpar_hcall(H_RANDOM, (unsigned long *)buffer);
 if (rc != H_SUCCESS) {
  pr_err_ratelimited("H_RANDOM call failed %d\n", rc);
  return -EIO;
 }
 memcpy(data, buffer, 8);


 return 8;
}
