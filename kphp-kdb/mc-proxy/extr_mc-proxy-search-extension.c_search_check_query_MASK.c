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

/* Variables and functions */
 scalar_t__ SEARCHX_EXTENSION ; 
 scalar_t__ SEARCH_EXTENSION ; 
 int FUNC0 (char const*,int) ; 
 int mct_get ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 

int FUNC3 (int type, const char *key, int key_len) {
  if (type != mct_get) {
    return 0;
  }

  int l =  FUNC0 (key, key_len);
  key += l;
  key_len -= l;

  if (SEARCH_EXTENSION || SEARCHX_EXTENSION) {
    return (key_len >= 6 && !FUNC1 (key, "search", 6));
  } else {
    return (key_len >= 7 && !FUNC2 (key, "search(", 7)) || (key_len >= 6 && !FUNC2 (key, "target", 6))
          	|| (key_len >= 6 && !FUNC2 (key, "prices", 6)) ||  (key_len >= 3 && !FUNC2 (key, "ad_", 3));  }
}