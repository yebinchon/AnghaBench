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
 int FUNC2 (unsigned char const* const,int,int*) ; 
 char* url_symbols64 ; 

int FUNC3 (const unsigned char *const input, int ilen, char *output, int olen) {
  int i, j = 0;
  char buf[4];
  for (i = 0; i < ilen; ) {
    int old_i = i;
    int o = FUNC2 (input, ilen, &i);
    o <<= 8;
    o |= FUNC2 (input, ilen, &i);
    o <<= 8;
    o |= FUNC2 (input, ilen, &i);
    int l = i - old_i;
    FUNC0 (l > 0 && l <= 3);
    int u;
    for (u = 3; u >= 0; u--) {
      buf[u] = url_symbols64[o & 63];
      o >>= 6;
    }
    l++;
    if (j + l >= olen) {
      return -1;
    }
    FUNC1 (&output[j], buf, l);
    j += l;
  }
  if (j >= olen) {
    return -1;
  }
  output[j++] = 0;
  return 0;
}