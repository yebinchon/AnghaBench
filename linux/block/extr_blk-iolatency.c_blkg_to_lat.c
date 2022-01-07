
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iolatency_grp {int dummy; } ;
struct blkcg_gq {int dummy; } ;


 int blkcg_policy_iolatency ;
 int blkg_to_pd (struct blkcg_gq*,int *) ;
 struct iolatency_grp* pd_to_lat (int ) ;

__attribute__((used)) static inline struct iolatency_grp *blkg_to_lat(struct blkcg_gq *blkg)
{
 return pd_to_lat(blkg_to_pd(blkg, &blkcg_policy_iolatency));
}
