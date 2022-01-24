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
struct lev_targ_ad_price {scalar_t__ ad_price; int /*<<< orphan*/  ad_id; } ;
struct advert {scalar_t__ price; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct advert*) ; 
 struct advert* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct advert*) ; 

__attribute__((used)) static int FUNC4 (struct lev_targ_ad_price *E) {
  if (!E->ad_price) {
    return 0;
  }
  struct advert *A = FUNC2 (E->ad_id, FUNC0 (E->ad_id));
  if (!A) {
    return 0;
  }
  /* have to load this ancient ad */
  int res = FUNC3 (A);
  if (res < 0) {
    return res;
  }
    
  A->price = E->ad_price;  
  FUNC1 (A);
  return 1;
}