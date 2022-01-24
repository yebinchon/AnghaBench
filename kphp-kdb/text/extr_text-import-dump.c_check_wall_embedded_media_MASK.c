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
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int*) ; 

int FUNC2 (char *str, int len) {
  int x = -1;

  switch (str[2]) {
  case 'a':
    if (len >= 10 && !FUNC0 (str + 2, "audio", 5)) {
      if (FUNC1 (str, "[[audio%*u]]%n", &x) >= 0 && x >= 0) {
        return 1;
      }
      if (FUNC1 (str, "[[audio%*d_%*u]]%n", &x) >= 0 && x >= 0) {
        return 1;
      }
      break;
    }
    if (len >= 13 && !FUNC0 (str + 2, "app_post", 8)) {
      int y = -1;
      if (FUNC1 (str, "[[app_post%*u|%n", &x) < 0 || x < 0) {
        return 0;
      }
      switch (str[x]) {
      case 'a':
        FUNC1 (str + x, "a_%*u_%*u_%*u|%n", &y);
        break;
      case 'p':
        FUNC1 (str + x, "p_%*u_%*u_%*u_%*[0-9a-z]|%n", &y);
        break;
      }
      if (y < 0) {
        return 0;
      }
      x += y;
      if (str[x] == ']' && str[x+1] == ']') {
        return 5;
      }
      y = -1;
      if (FUNC1 (str + x, "%*[0-9a-z]]]%n", &y) >= 0 && y >= 0) {
        return 5;
      }
    }
    break;
  case 'g':
    if (len >= 13 && !FUNC0 (str + 2, "graffiti", 8)) {
      if (FUNC1 (str, "[[graffiti%*u]]%n", &x) >= 0 && x >= 0) {
        return 1;
      }
    }
    break;
  case 'p':
    if (len >= 10 && !FUNC0 (str + 2, "photo", 5)) {
      if (FUNC1 (str, "[[photo%*d_%*u]]%n", &x) >= 0 && x >= 0) {
        return 1;
      }
      break;
    }
    if (len >= 23 && !FUNC0 (str + 2, "posted_photo", 12)) {
      if (FUNC1 (str, "[[posted_photo%*u_%*u_%*[0-9a-z]_%*u]]%n", &x) >= 0 && x >= 0) {
        return 1;
      }
    }
    break;
  case 'v':
    if (len >= 10 && !FUNC0 (str + 2, "video", 5)) {
      if (FUNC1 (str, "[[video%*u]]%n", &x) >= 0 && x >= 0) {
        return 1;
      }
      if (FUNC1 (str, "[[video%*d_%*u]]%n", &x) >= 0 && x >= 0) {
        return 1;
      }
    }
    break;
  }
  return 0;
}