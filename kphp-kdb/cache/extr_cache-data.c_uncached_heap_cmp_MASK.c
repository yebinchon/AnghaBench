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
struct cache_uri {scalar_t__ data; } ;

/* Variables and functions */
 float FUNC0 (struct cache_uri const*) ; 
 int FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ uri_off ; 

__attribute__((used)) static int FUNC2 (const void *a, const void *b) {
  const struct cache_uri *U = (const struct cache_uri *) a, *V = (const struct cache_uri *) b;
  const float x = FUNC0 (U), y = FUNC0 (V);
  if (x > y) {
    return -1;
  } else if (x < y) {
    return 1;
  } else {
    return FUNC1 (U->data + uri_off, V->data + uri_off);
  }
}