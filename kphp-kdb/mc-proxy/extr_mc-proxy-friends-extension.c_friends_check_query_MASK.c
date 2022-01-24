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
 int mct_add ; 
 int mct_get ; 
 int mct_replace ; 
 int mct_set ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int) ; 

int FUNC2 (int type, const char *key, int key_len) {
  int l = FUNC0 (key, key_len);
  key += l;
  key_len -= l;
  if (type == mct_get) {
    return (key_len >= 19 && (!FUNC1 (key, "common_friends_num", 18) || !FUNC1 (key, "%common_friends_num", 19))) || 
           (key_len >= 15 && (!FUNC1 (key, "common_friends", 14) || !FUNC1 (key, "%common_friends", 15)));
  } else if (type == mct_set || type == mct_replace || type == mct_add) {
    return (key_len >= 8 && !FUNC1 (key, "userlist", 8));
  } else {
    return 0;
  }
}