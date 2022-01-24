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
typedef  int /*<<< orphan*/  privacy_key_t ;

/* Variables and functions */
 int FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct connection*,char const*,char*,int) ; 
 int FUNC4 (char const*,char*,int*,int*,int*) ; 
 char* stats_buff ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

void FUNC5 (struct connection *c, const char *str, int len) {
  int checker_id, user_id, i, j, k;
  privacy_key_t privacy_key;

  if (FUNC4 (str, "%d~%d:%n", &checker_id, &user_id, &i) >= 2 && (j = FUNC2 (str+i, &privacy_key, -1)) > 0) {
    j += i;
    if (!str[j]) {
      i = FUNC0 (checker_id, user_id, privacy_key);
      if (verbosity > 1) {
        FUNC1 (stderr, "check_privacy(%d,%d,%016x) = %d\n", checker_id, user_id, privacy_key, i);
      }
      stats_buff[0] = (i & -4 ? '?' : '0' + i);
      stats_buff[1] = 0;

      FUNC3 (c, str, stats_buff, 1);
      return;
    } else if (str[j] == ',') {
      k = 0;
      while (k < 256) {
        i = FUNC0 (checker_id, user_id, privacy_key);
        stats_buff[k++] = (i & -4 ? '?' : '0' + i);
        if (verbosity > 1) {
          FUNC1 (stderr, "check_privacy(%d,%d,%016x) = %d\n", checker_id, user_id, privacy_key, i);
        }
        if (str[j] != ',') {
          break;
        }
        i = FUNC2 (str+j+1, &privacy_key, -1);
        if (i <= 0) {
          break;
        }
        j = j+i+1;
      }
      if (!str[j]) {
        stats_buff[k] = 0;
        FUNC3 (c, str, stats_buff, k);
        return;
      }
    }
  }
  return;
}