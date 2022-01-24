#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lev_cache_set_size_short {int /*<<< orphan*/  data; } ;
struct lev_cache_set_size_long {long long size; int /*<<< orphan*/  data; } ;
struct cache_uri {long long size; int /*<<< orphan*/  uri_md5_h0; } ;
struct TYPE_3__ {int /*<<< orphan*/ * c; } ;
struct TYPE_4__ {TYPE_1__ uri_md5; } ;

/* Variables and functions */
 long long CACHE_MAX_SIZE ; 
 int /*<<< orphan*/  LEV_CACHE_SET_SIZE_LONG ; 
 int /*<<< orphan*/  LEV_CACHE_SET_SIZE_SHORT ; 
 void* FUNC0 (int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct cache_uri*) ; 
 struct cache_uri* FUNC3 (struct cache_uri*,long long) ; 
 int /*<<< orphan*/  FUNC4 (struct cache_uri*) ; 
 struct cache_uri* FUNC5 (char const* const,int /*<<< orphan*/ ) ; 
 TYPE_2__ get_uri_f_last_md5 ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,char const* const,long long) ; 

int FUNC8 (const char *const uri, long long size) {
  if (size < 0 || size > CACHE_MAX_SIZE) {
    FUNC7 (2, "cache_do_set_size (%s, %lld), size is out of range\n", uri, size);
    return -1;
  }
  struct cache_uri *U = FUNC5 (uri, 0);
  if (U == NULL) {
    return -1;
  }
  if (U->size != size) {
    const int bytes = FUNC2 (U);
    FUNC1 (bytes != 0);
    if (bytes == 8 && size <= 0xffffffffLL) {
      struct lev_cache_set_size_short *E = FUNC0 (LEV_CACHE_SET_SIZE_SHORT, sizeof (struct lev_cache_set_size_short), (unsigned) size);
      FUNC6 (E->data, &U->uri_md5_h0, 8);
    } else {
      struct lev_cache_set_size_long *E = FUNC0 (LEV_CACHE_SET_SIZE_LONG, sizeof (struct lev_cache_set_size_long), 0);
      E->size = size;
      FUNC4 (U);
      FUNC6 (E->data, get_uri_f_last_md5.uri_md5.c, 16);
    }
    U = FUNC3 (U, size);
  }
  return 0;
}