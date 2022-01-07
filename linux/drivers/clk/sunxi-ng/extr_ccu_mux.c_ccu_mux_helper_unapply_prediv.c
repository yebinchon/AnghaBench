
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccu_mux_internal {int dummy; } ;
struct ccu_common {int dummy; } ;


 unsigned long ccu_mux_get_prediv (struct ccu_common*,struct ccu_mux_internal*,int) ;

__attribute__((used)) static unsigned long ccu_mux_helper_unapply_prediv(struct ccu_common *common,
         struct ccu_mux_internal *cm,
         int parent_index,
         unsigned long parent_rate)
{
 return parent_rate * ccu_mux_get_prediv(common, cm, parent_index);
}
