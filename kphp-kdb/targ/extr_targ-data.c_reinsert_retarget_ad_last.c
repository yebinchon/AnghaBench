
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct advert {int dummy; } ;


 int insert_retarget_ad_last (struct advert*) ;
 int remove_queue_ad (struct advert*) ;

inline void reinsert_retarget_ad_last (struct advert *A) {
  remove_queue_ad (A);
  insert_retarget_ad_last (A);
}
