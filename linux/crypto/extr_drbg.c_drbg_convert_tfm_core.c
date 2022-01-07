
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* cra_name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* drbg_cores ;
 int memcmp (char const*,char*,int) ;
 size_t strlen (char const*) ;

__attribute__((used)) static inline void drbg_convert_tfm_core(const char *cra_driver_name,
      int *coreref, bool *pr)
{
 int i = 0;
 size_t start = 0;
 int len = 0;

 *pr = 1;

 if (!memcmp(cra_driver_name, "drbg_nopr_", 10)) {
  start = 10;
  *pr = 0;
 } else if (!memcmp(cra_driver_name, "drbg_pr_", 8)) {
  start = 8;
 } else {
  return;
 }


 len = strlen(cra_driver_name) - start;
 for (i = 0; ARRAY_SIZE(drbg_cores) > i; i++) {
  if (!memcmp(cra_driver_name + start, drbg_cores[i].cra_name,
       len)) {
   *coreref = i;
   return;
  }
 }
}
