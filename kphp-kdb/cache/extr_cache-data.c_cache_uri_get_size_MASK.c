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
struct cache_uri {int size; scalar_t__ data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ uri_off ; 

long long FUNC1 (const struct cache_uri *U) {
  if (U->size == -1) {
    return -1LL;
  }
  if (U->size & 0x80000000) {
    return U->size & 0x7fffffff;
  }
  long long res = U->size & 0xffffff;
  const int n = U->size >> 24;
  int i, s = 24;
  unsigned char *r = (unsigned char *) (U->data + (uri_off + FUNC0 (U->data + uri_off) + 1));
  for (i = 0; i < n; i++) {
    const long long u = *r++;
    res |= u << s;
    s += 8;
  }
  return res;
}