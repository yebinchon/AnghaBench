
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alg_check_test_descs_order () ;
 int alg_check_testvec_configs () ;
 int pr_warn (char*) ;

__attribute__((used)) static void testmgr_onetime_init(void)
{
 alg_check_test_descs_order();
 alg_check_testvec_configs();




}
