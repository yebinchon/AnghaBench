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
struct connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 (struct connection*,int) ; 
 scalar_t__ FUNC3 (struct connection*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct connection*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stats_buff ; 
 scalar_t__ FUNC9 (char*,char**,int) ; 
 scalar_t__ tag_id ; 
 char* value_buff ; 

int FUNC10 (struct connection *c, const char *start, const char *key, int key_len) {
  char *cur = (char *) FUNC4 (start), *q_ptr, *q_start = cur + 1;
  if (*cur != '(') {
    return -1;
  }
  FUNC6 (key, key_len);
  FUNC0 ();
  char *q_err = 0;
  if (FUNC3 (c) > 0 && cur[1] >= '0' && cur[1] <= '9' && FUNC9 (cur + 1, &q_start, 10) == tag_id) {
    q_ptr = value_buff;
    if (FUNC1 (&q_ptr)) {
      while (*q_ptr == ';' || *q_ptr == '\n') {
        q_ptr++;
        if (!FUNC1 (&q_ptr)) {
          q_err = q_ptr;
          break;
        }
      }
    }
    if (!q_err) {
      if (*q_ptr) {
        q_err = q_ptr;
      } else if (*q_start++ != ';') {
        q_err = q_start - 1;
      }
    }
  }
  q_ptr = q_start;
  if (!q_err && FUNC1 (&q_ptr)) {
    while (*q_ptr == ';') {
      q_ptr++;
      if (!FUNC1 (&q_ptr)) {
        q_err = q_ptr;
        break;
      }
    }
  }
  FUNC4 (start);
  if (!q_err && !FUNC5 (q_ptr)) {
    q_err = q_ptr;
  }
  if (q_err) {
    FUNC2 (c, -1);
    FUNC7 (c, key, stats_buff, FUNC8 (stats_buff, "ERROR near '%.256s'\n", q_err));
    return 0;
  } else {
    return 1;
  }
}