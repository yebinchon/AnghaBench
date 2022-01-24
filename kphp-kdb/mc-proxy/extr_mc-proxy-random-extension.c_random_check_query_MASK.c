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
 int FUNC0 (char const*,int) ; 
 int mct_get ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,char const*,int) ; 

int FUNC3 (int type, const char *key, int key_len) {
  FUNC2 (2, "random_check: type = %d, key = %s, key_len = %d\n", type, key, key_len);
  int l = FUNC0 (key, key_len);
  key += l;
  key_len -= l;
  if (type == mct_get) {
    return (key_len >= 6 && !FUNC1 (key, "random", 6)) ||
           (key_len >= 10 && !FUNC1 (key, "hex_random", 10));
  } else {
    return 1;
  }
}