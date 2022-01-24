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
struct hints_gather_extra {int limit; scalar_t__ need_rating; } ;
struct gather_entry {scalar_t__ num; } ;
struct connection {int /*<<< orphan*/  Out; } ;

/* Variables and functions */
 scalar_t__ HINTS_MERGE_EXTENSION ; 
 int Q_limit ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct gather_entry*) ; 
 int* FUNC7 () ; 
 char* FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 int FUNC10 (struct connection*,char const*,char*,int) ; 
 size_t FUNC11 (char*,char*,int,...) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char const*,int) ; 

int FUNC13 (struct connection *c, const char *key, int key_len, void *E, struct gather_entry *data, int tot_num) {
  struct hints_gather_extra *extra = E;
  FUNC1 (E != 0);
  static char buff[2048];
  int w, i;
  int res = 0;
  char *ptr, *size_ptr, *s;
  int len = key_len;

  Q_limit = extra->limit;

  int at_l = FUNC3 (key, len);
  key += at_l;
  len -= at_l;

  FUNC2 (0);
  for (i = 0; i < tot_num; i++) if (data[i].num >= 0) {
    res += data[i].num;
    FUNC1 (data[i].num >= 0);
    if (verbosity >= 4) {
      FUNC4 (stderr, "Using result %d (num = %ld)\n", i, data[i].num);
    }
    FUNC6 (&data[i]);
  } else {
    if (verbosity >= 4) {
      FUNC4 (stderr, "Dropping result %d (num = %ld)\n", i, data[i].num);
    }
  }

  if (verbosity > 0) {
    FUNC4 (stderr, "result = %d\n", res);
  }

  if (!Q_limit || !res) {
    w = FUNC11 (buff, "%d", res);
    return FUNC10 (c, key, buff, w);
  }

  FUNC12 (&c->Out, "VALUE ", 6);
  FUNC12 (&c->Out, key, len);

  ptr = FUNC8 (&c->Out, 512);
  if (!ptr) return -1;
  s = ptr + 448;

  FUNC9 (ptr, " 0 .........\r\n", 14);
  size_ptr = ptr + 3;
  ptr += 14;
  ptr += w = FUNC11 (ptr, "%d", res);
  
  //char split;
  //int id_bytes;
  if (HINTS_MERGE_EXTENSION) {
  } else {
    FUNC1 (0);
  }

  for (i = 0; i < Q_limit; ) {
    int t, *Res = FUNC7 ();
    if (!Res) { break; }
    
    if (ptr >= s) {
      FUNC0 (&c->Out, ptr - (s - 448));
      ptr = FUNC8 (&c->Out, 512);
      if (!ptr) return -1;
      s = ptr + 448;
    }
    
    *ptr++ = ',';  w++;
    w += t = FUNC11 (ptr, "%d%c%d", Res[0], ',', Res[1]);
    ptr += t;
    if (extra->need_rating) {
      w += t = FUNC11 (ptr, "%c%.6lf", ',', (double)*(float *)&Res[2]);
      ptr += t;
    }

    FUNC5 ();
    i++;
  }
  
  size_ptr[FUNC11 (size_ptr, "% 9d", w)] = '\r';
  //memcpy (ptr, "\r\nEND\r\n", 7);
  //ptr += 7;
  FUNC9 (ptr, "\r\n", 2);
  ptr+=2;
  FUNC0 (&c->Out, ptr - (s - 448));

  return 0;
}