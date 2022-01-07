
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct advert {int flags; scalar_t__ disabled_since; } ;


 int ADF_ON ;
 scalar_t__ AD_ANCIENT_DELAY ;
 scalar_t__ log_last_ts ;

__attribute__((used)) static inline int ad_became_ancient (struct advert *A) {
  return !(A->flags & ADF_ON) && A->disabled_since <= log_last_ts - AD_ANCIENT_DELAY;
}
