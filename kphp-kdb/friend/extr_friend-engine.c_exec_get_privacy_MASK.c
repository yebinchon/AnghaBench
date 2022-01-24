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
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct connection*,char const*,char*,int) ; 
 int FUNC3 (char const*,char*,int*,int*) ; 
 char* stats_buff ; 

void FUNC4 (struct connection *c, const char *str, int len) {
  int user_id, i;
  privacy_key_t privacy_key;

  if (FUNC3 (str, "privacy%d_%n", &user_id, &i) >= 1 && FUNC0 (str+i, &privacy_key, 1) > 0) {
    i = FUNC1 (stats_buff, user_id, privacy_key);
    if (i >= 0) {
      FUNC2 (c, str, stats_buff, i);
    } else {
      FUNC2 (c, str, "?", 1);
    }
    return;
  }
  return;
}