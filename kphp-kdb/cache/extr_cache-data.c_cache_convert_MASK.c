#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  union cache_packed_local_copy_location {int dummy; } cache_packed_local_copy_location ;
struct cache_uri {int dummy; } ;
struct TYPE_5__ {int flags; int /*<<< orphan*/  location; } ;

/* Variables and functions */
 int CACHE_LOCAL_COPY_FLAG_INT ; 
 int /*<<< orphan*/  CACHE_MAX_LOCAL_COPIES ; 
 TYPE_1__* LC ; 
 int FUNC0 (TYPE_1__*,union cache_packed_local_copy_location*) ; 
 int FUNC1 (struct cache_uri*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cache_uri*,TYPE_1__*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 

__attribute__((used)) static int FUNC7 (struct cache_uri *U, char *output, int olen) {
  int i, n = FUNC1 (U, LC, CACHE_MAX_LOCAL_COPIES, 0, NULL);
  if (n < 0) {
    FUNC6 (1, "cache_convert: cache_local_copy_unpack failed.\n");
    return -1;
  }
  int m = 0;
  for (i = 0; i < n; i++) {
    union cache_packed_local_copy_location u;
    int flags = FUNC0 (LC + i, &u);
    FUNC6 (4, "cache_local_copy_get_flags returns %d.\n", flags);
    if (flags != 1) {
      continue;
    }
    if (m != i) {
      LC[m] = LC[i];
    }
    m++;
  }
  if (!m) {
    return 0;
  }
  i = FUNC3 () % m;
  if (LC[i].flags & CACHE_LOCAL_COPY_FLAG_INT) {
    FUNC2 (U, LC + i);
  }
  int l = FUNC5 (LC[i].location);
  if (olen < l + 1) {
    FUNC6 (1, "cache_convert: output buffer is too small (%d bytes).\n", olen);
    return -1;
  }
  FUNC4 (output, LC[i].location);
  return 1;
}