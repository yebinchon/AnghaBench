
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int alg; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ WARN_ON (int) ;
 TYPE_1__* alg_test_descs ;
 int pr_warn (char*,int ,...) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static void alg_check_test_descs_order(void)
{
 int i;

 for (i = 1; i < ARRAY_SIZE(alg_test_descs); i++) {
  int diff = strcmp(alg_test_descs[i - 1].alg,
      alg_test_descs[i].alg);

  if (WARN_ON(diff > 0)) {
   pr_warn("testmgr: alg_test_descs entries in wrong order: '%s' before '%s'\n",
    alg_test_descs[i - 1].alg,
    alg_test_descs[i].alg);
  }

  if (WARN_ON(diff == 0)) {
   pr_warn("testmgr: duplicate alg_test_descs entry: '%s'\n",
    alg_test_descs[i].alg);
  }
 }
}
