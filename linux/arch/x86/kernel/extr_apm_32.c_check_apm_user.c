
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apm_user {scalar_t__ magic; } ;


 scalar_t__ APM_BIOS_MAGIC ;
 int pr_err (char*,char const*) ;

__attribute__((used)) static int check_apm_user(struct apm_user *as, const char *func)
{
 if (as == ((void*)0) || as->magic != APM_BIOS_MAGIC) {
  pr_err("%s passed bad filp\n", func);
  return 1;
 }
 return 0;
}
