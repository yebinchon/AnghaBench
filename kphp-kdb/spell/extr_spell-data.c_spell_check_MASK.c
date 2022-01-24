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
typedef  int /*<<< orphan*/  res ;
typedef  int /*<<< orphan*/  dyn_mark_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int) ; 
 int /*<<< orphan*/ * check_word_stat ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int FUNC5 (char*) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  re_email ; 
 int /*<<< orphan*/  re_url ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 scalar_t__ FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 char* FUNC12 (scalar_t__) ; 

int FUNC13 (char *original_text, int res[3], int destroy_original) {
  static char buff[16384];
  FUNC7 (res, 0, sizeof (res));
  char *text;
  dyn_mark_t m;
  if (!destroy_original) {
    FUNC2 (m);
    text = FUNC12 (FUNC10 (original_text) + 1);
    FUNC9 (text, original_text);
  } else {
    text = original_text;
  }
  FUNC11 (3, "Before filter: %s\n", text);
  FUNC4 (text, &re_email);
  FUNC4 (text, &re_url);
  FUNC11 (3, "After filter: %s\n", text);

  while (*text) {
    int wl = FUNC5 (text);
    if (wl < 0) {
      break;
    }
    text += wl;
    wl = FUNC6 (text);
    if (!wl) {
      continue;
    }
    FUNC0 (wl > 0 && wl < 16383);
    FUNC8 (buff, text, wl);
    if (wl >= 3) {
      int l = FUNC8 (buff, text, wl);
      int r = FUNC1 (buff, l);
      FUNC11 (3, "[%d] check_word: %.*s\n", r, l, buff);
      if (r >= 0) {
        check_word_stat[1]++;
        if (r) {
          res[0]++;
          check_word_stat[0]++;
        } else {
          res[1]++;
        }
      } else {
        res[2]++;
      }
    }
    text += wl;
  }
  if (!destroy_original) {
    FUNC3 (m);
  }
  return 0;
}