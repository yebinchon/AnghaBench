
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct advert {int dummy; } ;


 int AHd_retarget ;
 int insert_queue_ad_before (struct advert*,struct advert*) ;

inline void insert_retarget_ad_last (struct advert *A) {
  insert_queue_ad_before ((struct advert *)&AHd_retarget, A);
}
