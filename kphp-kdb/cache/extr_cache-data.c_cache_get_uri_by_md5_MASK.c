#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct cache_uri {struct cache_uri* hnext; } ;
struct TYPE_4__ {int* h; } ;
typedef  TYPE_1__ md5_t ;

/* Variables and functions */
 struct cache_uri** H ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct cache_uri*,TYPE_1__*,int) ; 
 int uri_hash_prime ; 

struct cache_uri *FUNC2 (md5_t *uri_md5, int len) {
  FUNC0 (len == 8 || len == 16);
  const int h = uri_md5->h[0] % uri_hash_prime;
  struct cache_uri **p = H + h, *V;
  while (*p) {
    V = *p;
    if (FUNC1 (V, uri_md5, len)) {
      *p = V->hnext;
      V->hnext = H[h];
      H[h] = V;
      return V;
    }
    p = &V->hnext;
  }
  return NULL;
}