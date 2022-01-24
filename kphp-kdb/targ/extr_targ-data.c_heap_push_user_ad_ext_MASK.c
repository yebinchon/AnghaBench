#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct intree_node {int x; int z; } ;
struct advert {int flags; scalar_t__ recent_views; scalar_t__ recent_views_limit; int category; scalar_t__ price; double expected_gain; int subcategory; double lambda; double delta; scalar_t__ group; } ;
struct TYPE_9__ {TYPE_1__* g; } ;
struct TYPE_8__ {double expected_gain; } ;
struct TYPE_7__ {int /*<<< orphan*/  weights; } ;
struct TYPE_6__ {double views; scalar_t__ clicks; } ;

/* Variables and functions */
 int ADF_LIMIT_VIEWS ; 
 TYPE_5__ AdStats ; 
 TYPE_4__* H ; 
 scalar_t__ HN ; 
 long MAX_AD_VIEWS ; 
 int __and_mask ; 
 long long __cat_mask ; 
 int __exclude_ad_id ; 
 scalar_t__ __gsort_limit ; 
 scalar_t__ __use_views_limit ; 
 TYPE_2__* __user ; 
 int __xor_mask ; 
 double FUNC0 () ; 
 struct advert* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (double,struct advert*,int) ; 
 scalar_t__ FUNC3 (TYPE_2__*,scalar_t__) ; 
 double FUNC4 (double) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7 (struct intree_node *N) {
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

  if (A->group && FUNC3 (__user, A->group)) {
    return 1;
  }

  long long cat_mask = (1LL << (A->category > 63 ? 0 : A->category));
  if (! (__cat_mask & cat_mask)) {
    return 1;
  }

  if (A->price <= 0) {
    if (!(A->flags & ADF_LIMIT_VIEWS) || views < 100) {
      FUNC2 (A->expected_gain, A, views);
    }
    return 1;
  }
  long i = views + 1;
  if (i >= MAX_AD_VIEWS) {
    i = MAX_AD_VIEWS - 1;
  }

  double category_val = 0;
  if (A->category) {
    category_val += FUNC5 (__user->weights, A->category);
  }
  if (A->subcategory) {
    category_val += FUNC5 (__user->weights, A->subcategory);
  }

  if (category_val) {
    category_val *= FUNC4 (2.0);
    category_val = ((((((1.0 / 24) * category_val) + (1.0 / 6)) * category_val) + (1.0 / 2)) * category_val + 1) * category_val + 1;
  } else {
    category_val = 1;
  }

  if (FUNC6 (!AdStats.g[i].views)) {
    i = 0;
    if (FUNC6 (!AdStats.g[0].views)) {
      FUNC2 (A->expected_gain * category_val, A, views);
      return 1;
    }
  }
  double p = (double) AdStats.g[i].clicks / AdStats.g[i].views;
  double lambda = A->lambda * p;
  double delta = A->delta * p;
  if (HN == __gsort_limit && (lambda + 2 * delta) * category_val <= H[1].expected_gain) {
    return 1;
  }
  double expected_gain = (lambda + delta * (FUNC0() + FUNC0() - FUNC0() - FUNC0())) * category_val;
  FUNC2 (expected_gain, A, views);
  return 1;
}