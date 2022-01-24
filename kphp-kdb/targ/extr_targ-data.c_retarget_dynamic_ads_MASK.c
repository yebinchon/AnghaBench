#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct advert {scalar_t__ retarget_time; int /*<<< orphan*/  ad_id; } ;
struct TYPE_4__ {struct advert* first; TYPE_1__* last; } ;
struct TYPE_3__ {int /*<<< orphan*/  ad_id; } ;

/* Variables and functions */
 TYPE_2__ AHd_retarget ; 
 int /*<<< orphan*/  LEV_TARG_AD_RETARGET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ binlog_disabled ; 
 scalar_t__ log_last_ts ; 
 scalar_t__ now ; 
 int /*<<< orphan*/  FUNC1 (struct advert*) ; 
 scalar_t__ targeting_disabled ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ,struct advert*,scalar_t__,...) ; 

int FUNC4 (void) {
  if (binlog_disabled || targeting_disabled) {
    return 0;
  }
  if (!now) {
    now = FUNC2 (0);
  }
  FUNC3 (3, "retarget_dynamic_ads() first=%d last=%d now=%d\n", AHd_retarget.first->ad_id, AHd_retarget.last->ad_id, now);
  if (AHd_retarget.first != (struct advert *) &AHd_retarget) {
    struct advert *A = AHd_retarget.first;
    FUNC3 (3, "first ad in retarget queue: ad #%d (%p), retarget_time=%d, now=%d\n", A->ad_id, A, A->retarget_time, now);
    if (A->retarget_time <= /* now */ log_last_ts) {
      FUNC0 (LEV_TARG_AD_RETARGET, 8, A->ad_id);
      FUNC1 (A);
      return 1;
    }
  }
  return 0;
}