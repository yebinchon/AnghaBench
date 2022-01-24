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
 int FUNC0 (char const*,unsigned char*,int) ; 

__attribute__((used)) static inline int FUNC1 (const char *input, unsigned long long *secret) {
  int r = FUNC0 (input, (unsigned char *) secret, 8);
  if (r < 0) {
    return r;
  }
  if (r != 8) {
    return -7;
  }
  return 0;
}