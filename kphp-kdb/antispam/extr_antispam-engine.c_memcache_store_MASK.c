#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct connection {int /*<<< orphan*/  Tmp; int /*<<< orphan*/  In; } ;
struct TYPE_9__ {unsigned int member_0; int member_1; unsigned int member_2; unsigned int member_3; } ;
typedef  TYPE_1__ request_t ;
typedef  int /*<<< orphan*/  request ;
struct TYPE_10__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  uahash; int /*<<< orphan*/  ip; int /*<<< orphan*/  id; } ;
typedef  TYPE_2__ antispam_pattern_t ;

/* Variables and functions */
 int /*<<< orphan*/  INIT ; 
 int MAX_PATTERN_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int TRUE ; 
 int /*<<< orphan*/  add_pattern ; 
 int FUNC1 (TYPE_2__,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct connection*) ; 
 int /*<<< orphan*/  FUNC4 (struct connection*) ; 
 int mct_add ; 
 int /*<<< orphan*/  other ; 
 int /*<<< orphan*/  set_matches ; 
 int FUNC5 (char const*,char*,unsigned int*,unsigned int*,unsigned int*,int*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned int,int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*,int const) ; 
 scalar_t__ FUNC10 (int) ; 
 TYPE_1__* value_buf ; 
 int verbosity ; 
 int FUNC11 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 

int FUNC12 (struct connection *c, int op, const char *key, int key_len, int flags, int delay, int size) {
  INIT;

  FUNC3 (c);
  if (verbosity >= 2) {
    FUNC2 (stderr, "memcache_store: key='%s', key_len=%d, value_len=%d\n", key, key_len, size);
  }

  if (FUNC10 (size >= MAX_PATTERN_LEN)) {
    FUNC0 (other, -2);
  }

  const int shift = 7;      // shift  == |pattern| == |matches|

  // set ("pattern{$id},{$ip},{$uahash}[,{$flags}]", $str);
  if (key_len >= shift && !FUNC9 (key, "pattern", shift)) {
    antispam_pattern_t p;
    int already_read = 0;
    FUNC7 (&c->In, value_buf, size);

    if (FUNC5 (key + shift, "%d,%u,%u%n,%hu%n", &p.id, &p.ip, &p.uahash, &already_read, &p.flags, &already_read) < 3
     || key[shift + already_read]) {
      FUNC0 (add_pattern, 0);
    }
    int res = FUNC1 (p, FUNC8 (value_buf), value_buf, (op != mct_add));
    FUNC0 (add_pattern, res);
  }
  // set ("matches{$ip},{$uahash},{$random_tag}", ${text});
  else if (key_len >= shift && !FUNC9 (key, "matches", shift)) {
    int already_read = 0;
    unsigned int ip, uahash, random_tag;

    FUNC7 (&c->In, value_buf, size);
    if (FUNC5 (key + shift, "%u,%u,%u%n", &ip, &uahash, &random_tag, &already_read) != 3 || key[shift + already_read]) {
      FUNC0 (set_matches, 0);
    }

    bool res = TRUE;
    request_t request = {random_tag, size, ip, uahash};
    FUNC4 (c);
    if (verbosity >= 3) {
      FUNC6 ("STORED: random_tag = %u, size = %d, ip = %u, uahash = %u\n"
                   "expect '$2get matches$6%u$^' command\n", random_tag, size, ip, uahash, random_tag);
    }
    res &= (FUNC11 (c->Tmp, &request, sizeof (request)) == sizeof (request));
    res &= (FUNC11 (c->Tmp, value_buf, size) == size);
    FUNC0 (set_matches, res);
  }

  FUNC0 (other, -2);
}