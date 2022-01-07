
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct advert {scalar_t__ retarget_time; int ad_id; } ;
struct TYPE_4__ {struct advert* first; TYPE_1__* last; } ;
struct TYPE_3__ {int ad_id; } ;


 TYPE_2__ AHd_retarget ;
 int LEV_TARG_AD_RETARGET ;
 int alloc_log_event (int ,int,int ) ;
 scalar_t__ binlog_disabled ;
 scalar_t__ log_last_ts ;
 scalar_t__ now ;
 int retarget_ad (struct advert*) ;
 scalar_t__ targeting_disabled ;
 scalar_t__ time (int ) ;
 int vkprintf (int,char*,int ,struct advert*,scalar_t__,...) ;

int retarget_dynamic_ads (void) {
  if (binlog_disabled || targeting_disabled) {
    return 0;
  }
  if (!now) {
    now = time (0);
  }
  vkprintf (3, "retarget_dynamic_ads() first=%d last=%d now=%d\n", AHd_retarget.first->ad_id, AHd_retarget.last->ad_id, now);
  if (AHd_retarget.first != (struct advert *) &AHd_retarget) {
    struct advert *A = AHd_retarget.first;
    vkprintf (3, "first ad in retarget queue: ad #%d (%p), retarget_time=%d, now=%d\n", A->ad_id, A, A->retarget_time, now);
    if (A->retarget_time <= log_last_ts) {
      alloc_log_event (LEV_TARG_AD_RETARGET, 8, A->ad_id);
      retarget_ad (A);
      return 1;
    }
  }
  return 0;
}
