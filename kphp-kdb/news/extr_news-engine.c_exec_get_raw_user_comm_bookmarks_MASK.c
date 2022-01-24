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
 int MAX_QUERY ; 
 int /*<<< orphan*/  Q ; 
 int QL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int bookmarks_size ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC2 (int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct connection*,char const*,int,int,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (char const*,char*,int*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC5 (char const*,char**,int) ; 
 int verbosity ; 

__attribute__((used)) static int FUNC6 (struct connection *c, const char *key, int key_len, int dog_len) {
  int user_id;
  int x = 0, raw = 0, mask = 0xffffffff;
  char *ptr;


  if (*key == '%') {
    raw = 1;
  }

  if ((FUNC4 (key+raw, "raw_user_comm_bookmarks%n", &x) >= 0) && x > 0) {
    x += raw;
    ptr = 0;
    user_id = FUNC5 (key+x, &ptr, 10);
    if (ptr < key + key_len && *ptr == ',') {
      ptr ++;
      mask = FUNC5 (ptr, &ptr, 10);
    }

    QL = FUNC2 (user_id, mask, Q, MAX_QUERY / 3);
    if (verbosity >= 2) {
      FUNC1 (stderr, "QL = %d, bookmarks_size = %d\n", QL, bookmarks_size);
    }
    if (QL < 0) {
      return -2;
    }
    FUNC0 (QL * 3 <= MAX_QUERY);
    FUNC3 (c, key - dog_len, key_len + dog_len, 0x7fffffff, -raw, Q, QL * 3);
  }
  return 0;
}