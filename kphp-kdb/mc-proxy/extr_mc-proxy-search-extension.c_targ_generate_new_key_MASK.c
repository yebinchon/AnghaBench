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
 scalar_t__ Q_limit ; 
 scalar_t__ Q_raw ; 
 scalar_t__ Q_slice_limit ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ is_search ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 scalar_t__ targ_extra ; 
 scalar_t__ FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3 (char *ptr, const char *key, int len, int pos) {
  int i = pos;
  if (is_search && Q_slice_limit != Q_limit && key[i] == '#') {
    FUNC1 (ptr, key, i);
    i += FUNC2 (ptr + i);
    FUNC0 (i < len + 3);
    return i;
  } else if (Q_raw) {
    FUNC1 (ptr, key, len+1);
    return len;
  } else if (targ_extra) {
    FUNC1 (ptr, key, len-1);
    if (key[i] == '#') {
      FUNC1 (ptr+len-1, "%)", 3);
      return len + 1;
    } else {
      FUNC1 (ptr+len-1, "#%)", 4);
      return len + 2;
    }
  } else {
    FUNC1 (ptr, key, len);
    FUNC1 (ptr+len, "#%", 3);
    return len + 2;
  }
}