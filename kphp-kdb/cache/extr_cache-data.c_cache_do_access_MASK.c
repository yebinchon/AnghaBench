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
struct lev_cache_uri {int /*<<< orphan*/  data; } ;
struct lev_cache_access_short {int /*<<< orphan*/  data; } ;
struct lev_cache_access_long {int /*<<< orphan*/  data; } ;
struct cache_uri {char const uri_md5_h0; } ;
struct TYPE_3__ {char const* c; } ;
struct TYPE_4__ {TYPE_1__ uri_md5; } ;

/* Variables and functions */
 scalar_t__ LEV_CACHE_ACCESS_LONG ; 
 scalar_t__ LEV_CACHE_ACCESS_SHORT ; 
 scalar_t__ LEV_CACHE_URI_ADD ; 
 int /*<<< orphan*/  access_miss_counters ; 
 int /*<<< orphan*/  access_success_counters ; 
 void* FUNC0 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct lev_cache_access_long*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct lev_cache_access_short*,int) ; 
 int FUNC4 (struct cache_uri*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct cache_uri*) ; 
 int /*<<< orphan*/  FUNC7 (struct cache_uri*) ; 
 struct cache_uri* FUNC8 (char const* const,int) ; 
 TYPE_2__ get_uri_f_last_md5 ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC10 (char const* const) ; 
 long long uries ; 

void FUNC11 (const char *const uri) {
  long long old_uries = uries;
  struct cache_uri *U = FUNC8 (uri, 1);

  FUNC5 ((FUNC6 (U) == 1) ? access_success_counters : access_miss_counters);

  if (uries != old_uries) {
    int l = FUNC10 (uri);
    FUNC1 (l < 256);
    struct lev_cache_uri *E = FUNC0 (LEV_CACHE_URI_ADD + l, sizeof (struct lev_cache_uri) + l, 0);
    FUNC9 (E->data, uri, l);
  }
  const int bytes = FUNC4 (U);
  if (bytes == 8) {
    struct lev_cache_access_short *E = FUNC0 (LEV_CACHE_ACCESS_SHORT + 1, sizeof (struct lev_cache_access_short), 0);
    FUNC9 (E->data, &U->uri_md5_h0, 8);
    FUNC3 (E, 1);
  } else {
    FUNC1 (bytes == 16);
    struct lev_cache_access_long *E = FUNC0 (LEV_CACHE_ACCESS_LONG + 1, sizeof (struct lev_cache_access_long), 0);
    FUNC7 (U);
    FUNC9 (E->data, get_uri_f_last_md5.uri_md5.c, 16);
    FUNC2 (E, 1);
  }
}