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
struct intree_node {int x; int z; } ;
struct advert {int flags; scalar_t__ recent_views; scalar_t__ recent_views_limit; scalar_t__ price; } ;

/* Variables and functions */
 int ADF_LIMIT_VIEWS ; 
 int __and_mask ; 
 int __exclude_ad_id ; 
 scalar_t__ __use_views_limit ; 
 int /*<<< orphan*/  __user_id ; 
 int __xor_mask ; 
 double FUNC0 (struct advert*,int,int /*<<< orphan*/ ) ; 
 struct advert* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (double,struct advert*,int) ; 

int FUNC3 (struct intree_node *N) {
  int ad_id = N->x;
  if (ad_id == __exclude_ad_id) {
    return 1;
  }
  int views = N->z;
  struct advert *A = FUNC1 (ad_id);
  if ((A->flags ^ __xor_mask) & __and_mask) {
    return 1;
  }
  if (__use_views_limit && A->recent_views >= A->recent_views_limit) {
    return 1;
  }
  if ((A->flags & ADF_LIMIT_VIEWS) && A->price <= 0 && views >= 100) {
    return 1;
  }
  double expected_gain = FUNC0 (A, views, __user_id);
  FUNC2 (expected_gain, A, views);
  return 1;
}