#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct connection {int /*<<< orphan*/  Out; } ;
struct TYPE_3__ {int data_len; char* data; } ;
typedef  TYPE_1__ hash_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  cmd_decr ; 
 int /*<<< orphan*/  cmd_incr ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,char const*,long long) ; 
 int FUNC4 (char const*,int,long long) ; 
 TYPE_1__* FUNC5 (int) ; 
 long long FUNC6 (char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,unsigned long long) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC9 (char*) ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long long*,int) ; 
 char* FUNC12 (int) ; 

int FUNC13 (struct connection *c, int op, const char *key, int key_len, long long arg) {
  if (verbosity > 0) {
    FUNC3 (stderr, "memcache_incr: op=%d, key='%s', val=%lld\n", op, key, arg);
  }
  if (arg < 0) {
    arg *= -1;
    op ^= 1;
  }

  if (op == 1) {
    cmd_decr++;
  } else {
    cmd_incr++;
  }

  long long key_hash = FUNC6 (key, key_len);
  int x = FUNC4 (key, key_len, key_hash);

  FUNC0 (2);

  if (x == -1) {
    FUNC10 (&c->Out, "NOT_FOUND\r\n", 11);
    return 0;
  }

  hash_entry_t *entry = FUNC5 (x);

  unsigned long long val = 0;
  int i, f = 1;

  for (i = 0; i < entry->data_len && f; i++) {
    if ('0' <= entry->data[i] && entry->data[i] <= '9') {
      val = val * 10 + entry->data[i] - '0';
    } else {
      f = 0;
    }
  }

  if (f == 0) {
    val = 0;
  }

  if (op == 1) {
    if ((unsigned long long)arg > val) {
      val = 0;
    } else {
      val -= arg;
    }
  } else {
    val += (unsigned long long)arg;
  }

  FUNC11 (entry->data, entry->data_len + 1);
  FUNC2 (x);
  FUNC1 (x);

  char buff[30];
  FUNC8 (buff, "%llu", val);

  int len = FUNC9 (buff);

  char *d = FUNC12 (len + 1);
  FUNC7 (d, buff, len + 1);

  entry->data = d;
  entry->data_len = len;

  FUNC10 (&c->Out, d, len);
  FUNC10 (&c->Out, "\r\n", 2);

  return 0;
}