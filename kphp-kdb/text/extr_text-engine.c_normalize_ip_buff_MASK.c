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
 char* ip_buff ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int FUNC2 (char*) ; 
 char FUNC3 (char) ; 

int FUNC4 (void) {
  static char aux_buff1[64], aux_buff2[64];
  char *ip_src = ip_buff;
  int i, j, l = FUNC2 (ip_src);
  int sc = 0;
  for (i = 0; i < l; i++) {
    if (ip_src[i] == ':') ++sc;
  }
  if (sc < 2 || sc > 7) {
    if (!sc) {
      char *ptr = ip_buff;
      int dots = 0;

      while (*ptr) {
	if (*ptr++ == '.') {
	  if (++dots == 3) {
	    break;
	  }
	}
      }
      *ptr = 0;
      if (dots < 3 || ptr - ip_buff > 12) {
	return -1;
      }
      return 0;
    }
    return -1;
  }
  if (l >= 2 && *ip_src == ':' && ip_src[1] == ':') {
    ++ip_src;
    --l;
    --sc;
  } else if (l >= 2 && ip_src[l - 2] == ':' && ip_src[l - 1] == ':') {
    --l;
    --sc;
    ip_src[l] = 0;
  }
  char *dest = aux_buff1;
  FUNC1 (aux_buff2, ip_src, l + 1);
  
  char *src = 0, *nx = aux_buff2;
  int cc = 0, fl = 0;
  while (nx) {
    src = nx;
    while (*nx && *nx != ':') {
      ++nx;
    }
    int ll = nx - src;
    if (*nx) {
      *nx = 0;
      ++nx;
    } else {
      nx = 0;
    }
    if (ll > 4) {
      return -1;
    }
    if (!ll) {
      if (fl) {
	return -1;
      }
      ++fl;
      for (i = 0; i < 8 - sc; i++) {
	for (j = 0; j < 4; j++) {
	  *dest++ = '0';
	}
	++cc;
	if (cc < 8) {
	  *dest++ = ':';
	}
      }
    } else {
      for (j = 0; j < 4 - ll; j++) {
	*dest++ = '0';
      }
      for (j = 0; j < ll; j++) {
	char c = FUNC3 (src[j]);
	if (!((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f'))) {
	  return -1;
	}
	*dest++ = c;
      }
      ++cc;
      if (cc < 8) {
	*dest++ = ':';
      }
    }
  }
  *dest = 0;
  FUNC0 (cc == 8 && dest == aux_buff1 + 39);
  FUNC1 (ip_buff, aux_buff1, 40);
  return 0;
}