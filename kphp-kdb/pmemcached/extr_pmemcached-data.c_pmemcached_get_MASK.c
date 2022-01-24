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
struct lev_pmemcached_get {int /*<<< orphan*/  key_len; int /*<<< orphan*/  key; } ;
struct data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct data FUNC1 () ; 

struct data FUNC2 (struct lev_pmemcached_get *E) {
  FUNC0 (E->key, E->key_len, 0);
  return FUNC1 ();
}