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
 int /*<<< orphan*/ * l_case ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 scalar_t__ word_split_utf8 ; 

void FUNC1 (char *to, const char *from, int len) {
  if (word_split_utf8) {
    FUNC0 (to, from, len);
    return;
  }
  while (len > 0) {
    *to++ = l_case[(unsigned char) *from++];
    len--;
  }
  *to = 0;
}