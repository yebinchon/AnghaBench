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
typedef  int /*<<< orphan*/  item_t ;

/* Variables and functions */
 long long const INT_MIN ; 
 scalar_t__ Q_hash_rating ; 
 long long FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*,scalar_t__) ; 

long long FUNC2 (const item_t *I) {
  if (Q_hash_rating < 0) {
    return FUNC0 (I);
  }
  const int rate = FUNC1 (I, Q_hash_rating);
  if (rate > 0) {
    return rate;
  }
  const long long h = FUNC0 (I);
  if (h > 0 && h < INT_MIN) {
    return 0;
  }
  return h;
}