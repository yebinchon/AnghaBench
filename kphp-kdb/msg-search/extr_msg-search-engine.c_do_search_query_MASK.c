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
struct connection {int /*<<< orphan*/  Out; } ;

/* Variables and functions */
 int MAX_NET_RES ; 
 int /*<<< orphan*/  MAX_QUERY_WORDS ; 
 int /*<<< orphan*/  MaxQw ; 
 int Qw ; 
 int* Res ; 
 int ResL ; 
 int /*<<< orphan*/  UH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int,int,int,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int now ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (struct connection*,char*,char*,int) ; 
 size_t FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC10 (char*,char*,int) ; 
 int FUNC11 (char*,char**,int) ; 
 int tot_response_bytes ; 
 int tot_response_words ; 
 scalar_t__ verbosity ; 

int FUNC12 (struct connection *c, char *key, int len) {
  int user_id, max_res, i, w;
  char *ptr, *s, *size_ptr;

  if (FUNC10 (key, "search(", 7)) { return -1; }
  s = key + 7;
  user_id = FUNC11 (s, &ptr, 10);
  if (ptr == s || *ptr != ',' || user_id <= 0 || user_id > (1L<<30)) { 
    return -1; 
  }
  s = ptr+1;
  max_res = FUNC11 (s, &ptr, 10);
  if (ptr == s || *ptr != ',' || max_res <= 0 || max_res > MAX_NET_RES) {
    return -1;
  }

  MaxQw = MAX_QUERY_WORDS;
  FUNC7(ptr+1);

  if (verbosity) {
    FUNC3 (stderr, "%d search query: uid=%d, max_res=%d, keywords=%d, text='%s'\n", now, user_id, max_res, Qw, ptr+1);
  }

  UH = FUNC2(user_id,0);
  if (!FUNC5(user_id) && !UH) {
    return FUNC8 (c, key, "no_user", 7);
  }

  if (!Qw) {
    return FUNC8 (c, key, "empty_query", 11);
  }

  if (FUNC1() < 0) {
    return FUNC8 (c, key, "search_error", 12);
  }

  ptr = FUNC4 (&c->Out, 512);
  if (!ptr) return -1;
  s = ptr + 480;
  FUNC6 (ptr, "VALUE ", 6);
  ptr += 6;
  FUNC6 (ptr, key, len);
  ptr += len;
  FUNC6 (ptr, " 0 .........\r\n", 14);
  size_ptr = ptr + 3;
  ptr += 14;
  ptr += w = FUNC9 (ptr, "%d", ResL);
  for (i = 0; i < ResL && i < max_res; i++) {
    int t;
    if (ptr >= s) {
      FUNC0 (&c->Out, ptr - (s - 480));
      ptr = FUNC4 (&c->Out, 512);
      if (!ptr) return -1;
      s = ptr + 480;
    }
    *ptr++ = ',';  w++;
    w += t = FUNC9 (ptr, "%d", Res[i]);
    ptr += t;
  }
  size_ptr[FUNC9 (size_ptr, "% 9d", w)] = '\r';
  FUNC6 (ptr, "\r\nEND\r\n", 7);
  ptr += 7;
  FUNC0 (&c->Out, ptr - (s - 480));

  tot_response_words += ResL;
  tot_response_bytes += w;

  return 0;
}