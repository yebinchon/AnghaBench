
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_grp {int pd; } ;
struct blkcg_gq {int dummy; } ;


 struct blkcg_gq* pd_to_blkg (int *) ;

__attribute__((used)) static inline struct blkcg_gq *tg_to_blkg(struct throtl_grp *tg)
{
 return pd_to_blkg(&tg->pd);
}
