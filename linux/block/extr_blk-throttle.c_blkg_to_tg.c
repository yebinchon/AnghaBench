
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_grp {int dummy; } ;
struct blkcg_gq {int dummy; } ;


 int blkcg_policy_throtl ;
 int blkg_to_pd (struct blkcg_gq*,int *) ;
 struct throtl_grp* pd_to_tg (int ) ;

__attribute__((used)) static inline struct throtl_grp *blkg_to_tg(struct blkcg_gq *blkg)
{
 return pd_to_tg(blkg_to_pd(blkg, &blkcg_policy_throtl));
}
