#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct lev_targ_ad_setaud {int aud; } ;
struct advert {int flags; scalar_t__ price; int ext_users; } ;

/* Variables and functions */
 int ADF_ANCIENT ; 
 int /*<<< orphan*/  LEV_TARG_AD_SETAUD ; 
 int MAX_AD_AUD ; 
 scalar_t__ FUNC0 (struct advert*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 struct advert* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct lev_targ_ad_setaud*) ; 

int FUNC4 (int ad_id, int aud) {
  struct advert *A = FUNC2 (ad_id, 0);
  if (!A || (A->flags & ADF_ANCIENT) || FUNC0 (A) || aud <= 0 || aud >= MAX_AD_AUD) {
    return 0;
  }
  if (A->price <= 0 || A->ext_users == aud) {
    return 1;
  }
  struct lev_targ_ad_setaud *E = (struct lev_targ_ad_setaud *)FUNC1 (LEV_TARG_AD_SETAUD, 12, ad_id);
  E->aud = aud;
  return FUNC3 (E);
}