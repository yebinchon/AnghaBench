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
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 

int FUNC3 (const char *s, int len, char *buf, int size) {
  FUNC0 (len >= 0);
  FUNC0 (len < (1 << 24));
  if (size < len + 4) { return -1; }
  if (len < 254) {
    *(buf ++) = len;
    FUNC1 (buf, s, len);
    int pad = (-(len + 1)) & 3;
    FUNC2 (buf + len, 0, pad);
    return 1 + len + pad;
  } else {
    *(buf ++) = 254;
    FUNC1 (buf, &len, 3);
    buf += 3;
    
    FUNC1 (buf, s, len);
    int pad = (-(len)) & 3;
    FUNC2 (buf + len, 0, pad);
    return 4 + len + pad;
  }
  return 0;
}