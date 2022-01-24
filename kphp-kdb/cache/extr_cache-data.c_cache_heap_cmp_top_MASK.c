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
struct cache_uri {int /*<<< orphan*/ * data; } ;
struct amortization_counter {scalar_t__ value; } ;

/* Variables and functions */
 size_t heap_acounter_off ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int uri_off ; 

__attribute__((used)) static int FUNC2 (const void *a, const void *b) {
  const struct cache_uri *U = (const struct cache_uri *) a;
  const struct cache_uri *V = (const struct cache_uri *) b;
  struct amortization_counter *C = ((struct amortization_counter *) &U->data[heap_acounter_off]);
  struct amortization_counter *D = ((struct amortization_counter *) &V->data[heap_acounter_off]);
  return C->value > D->value ? -1 : FUNC0(C->value < D->value) ? 1 : -FUNC1 (U->data + uri_off, V->data + uri_off);
}