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
 char const* Q_limit_end ; 
 char const* Q_limit_ptr ; 
 scalar_t__ Q_raw ; 
 scalar_t__ Q_slice_limit ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 scalar_t__ FUNC2 (char*,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC3 (char *ptr, const char *key, int len, int pos) {
  int i = pos;
  int w;
  if (Q_slice_limit < Q_limit && key[i] == '#' && Q_limit > 0 && Q_slice_limit > 0 && Q_limit_ptr) {
    i = Q_limit_ptr - key;
    FUNC0 ((unsigned) i < 2048);
    FUNC1 (ptr, key, i);
    i += FUNC2 (ptr + i, "%d%%", Q_slice_limit);
    w = key + len - Q_limit_end;
    FUNC0 ((unsigned) w < 2048);
    FUNC1 (ptr + i, Q_limit_end, w);
    FUNC0 (i + w < len + 3);
    ptr[i+w] = 0;
    return i + w;
  } else if (Q_raw) {
    FUNC1 (ptr, key, len+1);
    return len;
  } else if (key[i] == '#') {
    FUNC1 (ptr, key, i+1);
    ptr[i+1] = '%';
    FUNC1 (ptr+i+2, key+i+1, len-i);
    return len + 1;
  } else {
    FUNC1 (ptr, key, i);
    ptr[i] = '#';
    ptr[i+1] = '%';
    FUNC1 (ptr+i+2, key+i, len-i+1);
    return len + 2;
  }
}