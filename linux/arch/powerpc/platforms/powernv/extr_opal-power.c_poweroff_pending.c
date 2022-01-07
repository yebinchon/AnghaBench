
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be64 ;


 int OPAL_SUCCESS ;
 scalar_t__ detect_epow () ;
 int opal_get_dpo_status (int *) ;
 int pr_info (char*) ;

__attribute__((used)) static bool poweroff_pending(void)
{
 int rc;
 __be64 opal_dpo_timeout;


 rc = opal_get_dpo_status(&opal_dpo_timeout);
 if (rc == OPAL_SUCCESS) {
  pr_info("Existing DPO event detected.\n");
  return 1;
 }


 if (detect_epow()) {
  pr_info("Existing EPOW event detected.\n");
  return 1;
 }

 return 0;
}
