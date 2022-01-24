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
 int Q_limit ; 
 int is_search ; 
 scalar_t__ FUNC0 (char const*,char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int) ; 
 int targ_extra ; 

__attribute__((used)) static int FUNC2 (const char *key, int len) {
  int i = -1, x = -1;
  targ_extra = 1;
  if (!FUNC1 (key, "search(", 7)) { 
    is_search = 1;
    i = 7;
  } else if (FUNC0(key, "target%*u_%*d%n(", &i) >= 0 && i >= 7 && key[i] == '(') {
    i++;
  } else if (FUNC0(key, "prices%*u%n(", &i) >= 0 && i >= 7 && key[i] == '(') {
    i++;
  } else if (!FUNC1 (key, "ad_", 3)) { 
    switch (key[3]) {
    case 'c':
      if (key[4] == 'l') {
        FUNC0 (key, "ad_clicks%*u%n", &x);
      } else if (len >= 7 && key[6] == 's') {
        FUNC0 (key, "ad_ctrsump%*u%n", &x);
        Q_limit = 13;
      } else {
        FUNC0 (key, "ad_ctr%*u%n", &x);
        Q_limit = 4;
      }
      break;
    case 'd':
      FUNC0 (key, "ad_disable%*u%n", &x);
      break;
    case 'e':
      FUNC0 (key, "ad_enable%*u%n", &x);
      if (x > 0 && key[x] == '_') {
        x = -1;
        FUNC0 (key, "ad_enable%*u_%*d%n", &x);
      }
      break;
    case 'l':
      FUNC0 (key, "ad_limited_views%*u,%*u%n", &x);
      break;
    case 'm':
      FUNC0 (key, "ad_money%*u%n", &x);
      break;
    case 's':
      if (!FUNC1 (key, "ad_sump", 7)) {
        FUNC0 (key, "ad_sump%*u%n", &x);
        Q_limit = 9;
      } else if (!FUNC1 (key, "ad_setctrsump", 13)) {
        FUNC0 (key, "ad_setctrsump%*u:%*d,%*d,%*d,%*d,%*d%n", &x);
      } else if (!FUNC1 (key, "ad_setsump", 10)) {
        FUNC0 (key, "ad_setsump%*u:%*d,%*d,%*d%n", &x);
      } else if (!FUNC1 (key, "ad_setctr", 9)) {
        FUNC0 (key, "ad_setctr%*u:%*d,%*d%n", &x);
      } else if (!FUNC1 (key, "ad_setaud", 9)) {
        FUNC0 (key, "ad_setaud%*u:%*d%n", &x);
      } else if (!FUNC1 (key, "ad_sites", 8)) {
        FUNC0 (key, "ad_sites%*u,%*u%n", &x);
      }
      break;
    case 'v':
      FUNC0 (key, "ad_views%*u%n", &x);
      break;
    }
    if (x <= 0 || (key[x] && key[x] != '#')) {
      return -1; 
    }
    i = 3;
  } else if (!FUNC1 (key, "deletegroup", 11)) {
    FUNC0 (key, "deletegroup%*u%n", &x);
    i = 3;
  } else { 
    return -1; 
  }

  if (x <= 0) {
    i = len - 2;
    while (i > 7 && ((key[i] >= '0' && key[i] <= '9') || key[i] == '%' || key[i] == 'i' || key[i] == 'I' || key[i] == 'r' || key[i] == 'R')) {
      i--;
    }
    if (key[i] != '#') {
      i = len - 1;
    }
  } else {
    i = x;
  }
  targ_extra = (x <= 0);
  return i;
}