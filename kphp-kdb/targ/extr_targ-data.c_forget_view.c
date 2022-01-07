
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cyclic_views_entry {int ad_id; } ;
struct advert {scalar_t__ recent_views; } ;


 int assert (int) ;
 struct advert* get_ad (int ) ;

__attribute__((used)) static inline void forget_view (struct cyclic_views_entry *CV) {
  struct advert *A = get_ad (CV->ad_id);
  assert (!A || --A->recent_views >= 0);
}
