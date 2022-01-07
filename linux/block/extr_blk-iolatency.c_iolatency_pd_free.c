
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iolatency_grp {int stats; } ;
struct blkg_policy_data {int dummy; } ;


 int free_percpu (int ) ;
 int kfree (struct iolatency_grp*) ;
 struct iolatency_grp* pd_to_lat (struct blkg_policy_data*) ;

__attribute__((used)) static void iolatency_pd_free(struct blkg_policy_data *pd)
{
 struct iolatency_grp *iolat = pd_to_lat(pd);
 free_percpu(iolat->stats);
 kfree(iolat);
}
