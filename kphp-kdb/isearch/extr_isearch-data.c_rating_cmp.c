
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* ratings ;

inline int rating_cmp (const int a, const int b) {
  return ratings[a] > ratings[b] || (ratings[a] == ratings[b] && a <= b);
}
