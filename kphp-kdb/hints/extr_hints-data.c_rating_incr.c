
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rating ;


 int MAX_RATING ;
 int RATING_NORM ;
 int expf (int) ;
 scalar_t__ fading ;
 int ratingT ;

void rating_incr (rating *a, int cnt, int now_time) {
  if (fading) {
    rating dt = ((rating)(now_time - ratingT)) / RATING_NORM;
    *a += expf (dt) * cnt;
  } else {
    *a += cnt - 128;
    if (*a < -MAX_RATING) {
      *a = -MAX_RATING;
    }
    if (*a > MAX_RATING) {
      *a = MAX_RATING;
    }
  }
}
