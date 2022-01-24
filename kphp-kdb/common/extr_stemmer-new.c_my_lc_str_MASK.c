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
 int FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int FUNC3 (char const*,int,char*) ; 
 int FUNC4 (char const*,int,char*,int) ; 
 int /*<<< orphan*/  use_stemmer ; 

int FUNC5 (char *buff, const char *text, int len) {
  int x, c;
  if (!use_stemmer) {
    FUNC2 (buff, text, len);
    return len;
  }
  c = FUNC1 (text, len);
  if ((c & 12) == 12) {
    x = FUNC4 (text, len, buff, 1);
    FUNC2 (buff, buff, x);
    return x;
  }
  if (c & 8) {
    int i;
    for (i = 0; i < len && text[i] >= 0; i++) {
    }
    if (i == len) {
      x = FUNC3 (text, len, buff);
      FUNC0 (x > 0 && x <= len);
      FUNC2 (buff, buff, x);
      return x;
    }
  }
  FUNC2 (buff, text, len);
  return len;
}