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
 int* base64url_tbl ; 
 int /*<<< orphan*/  FUNC0 (unsigned long long*,unsigned char*,int) ; 

__attribute__((used)) static unsigned long long FUNC1 (unsigned char *s) {
  unsigned char t[9];
  unsigned long long u;
  unsigned char *p = &t[0];
  int i;
  for (i = 0; i < 3; i++) {
    int o = base64url_tbl[*s++];
    o <<= 6;
    o |= base64url_tbl[*s++];
    o <<= 6;
    o |= base64url_tbl[*s++];
    o <<= 6;
    o |= base64url_tbl[*s++];
    p[2] = o & 255;
    o >>= 8;
    p[1] = o & 255;
    p[0] = o >> 8;
    p += 3;
  }
  FUNC0 (&u, t, 8);
  return u;
}