
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* AncientAdBitmap ;
 unsigned int MAX_ADS ;

__attribute__((used)) static inline int ad_is_ancient (int ad_id) {
  return (unsigned) ad_id < MAX_ADS ? (AncientAdBitmap[ad_id >> 3] >> (ad_id & 7)) & 1 : 0;
}
