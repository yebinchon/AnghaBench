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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 unsigned long long FUNC2 (char*,int) ; 

__attribute__((used)) static unsigned long long FUNC3 (char *tag_name, int tag_name_len, unsigned int value) {
  FUNC0 (tag_name_len <= 16);
  char s[32];
  int i = 1;
  s[0] = 0x1f;
  FUNC1 (s + 1, tag_name, tag_name_len);
  i += tag_name_len;
  while (value >= 0x40) {
    s[i++] = (unsigned char) ((value & 0x7f) + 0x80);
    value >>= 7;
  }
  s[i++] = (unsigned char) ((value & 0x3f) + 0x40);
  return FUNC2 (s, i);
}