
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_grp {int dummy; } ;
struct blkg_policy_data {int dummy; } ;


 struct throtl_grp* pd_to_tg (struct blkg_policy_data*) ;
 int tg_update_has_rules (struct throtl_grp*) ;

__attribute__((used)) static void throtl_pd_online(struct blkg_policy_data *pd)
{
 struct throtl_grp *tg = pd_to_tg(pd);




 tg_update_has_rules(tg);
}
