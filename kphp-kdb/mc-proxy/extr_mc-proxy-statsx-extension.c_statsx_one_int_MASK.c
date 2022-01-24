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
 int /*<<< orphan*/  FUNC1 (char const*,char*,int) ; 

int FUNC2 (const char *key, int key_len) {
  int l = FUNC0 (key, key_len);
  key += l;
  key_len -= l;
  if (key[0] == '%') {
    key ++;
    key_len --;
  }
  return ((key_len >= 5) && !FUNC1 (key, "views", 5)) || ((key_len >= 8) && !FUNC1 (key, "visitors", 8));
}