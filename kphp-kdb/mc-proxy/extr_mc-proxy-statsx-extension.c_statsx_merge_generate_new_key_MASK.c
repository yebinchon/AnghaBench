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
 int FUNC0 (char*,char*,char*) ; 

int FUNC1 (char *buff, char *key, int key_len, void *E) {
  int l;
  if (key[0] == '%') {
    l = FUNC0 (buff, "%s", key);
  } else {
    l = FUNC0 (buff, "%%%s", key);
  }
  if (buff[l - 1] == '!') {
    buff[--l] = 0;
  }
  return l;
}