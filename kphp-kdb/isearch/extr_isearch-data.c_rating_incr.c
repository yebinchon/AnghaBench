
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rating ;


 int RATING_NORM ;
 int expf (int) ;
 scalar_t__ now ;
 scalar_t__ ratingT ;
 scalar_t__* ratings ;

inline void rating_incr (const int a, rating cnt) {




  ratings[a] += cnt;
  if (ratings[a] < 0) {
    ratings[a] = 0;
  }

}
